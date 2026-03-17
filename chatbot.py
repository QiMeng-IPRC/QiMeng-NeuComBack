import time
import ast
import re
import os
import json
import openai
from openai import OpenAI
from typing import List, Dict

class ChatBot_API():
    def __init__(self, model="gpt-4o"):
        self.model = model
        self.history = []
        if "deepseek-v3" in model.lower():
            self.client = OpenAI(
                api_key=os.getenv("ARK_API_KEY"),
                base_url="https://ark.cn-beijing.volces.com/api/v3"
            )
            self.model = "deepseek-v3-250324"
        elif "deepseek-r1" in model.lower():
            self.client = OpenAI(
                api_key=os.getenv("ARK_API_KEY"),
                base_url="https://ark.cn-beijing.volces.com/api/v3"
            )
            self.model = "deepseek-r1-250120"
        else:
            self.client = OpenAI()

    def raw_query(self, msgs: List[Dict], retries=9, **config):
        if "deepseek-r1" in self.model.lower():
            print("DeepSeek-R1 detected! Setting max_tokens to 16384.")
            print("DeepSeek-R1 detected! Setting timeout to 30 min.")
            # DeepSeek 默认 max_tokens=4096，上限可设到16384
            config.setdefault("max_tokens", 16384)
            config.setdefault("timeout", 1800.0)

        for i in range(retries):
            try:
                res = self.client.chat.completions.create(messages=msgs, **config)
                return res
            except Exception as e:
                print(f"An error occurred: {e}")
                if i == retries - 1:
                    raise e
                print("start sleep")
                time.sleep(20 * (2 ** i))
                print("sleep end")

    def clear(self):
        self.history = []

    def answer(self, content):
        message = {"role": "user", "content": content}
        self.history.append(message)
        # # 3. <<< 在调用 API 之前打印历史记录 >>>
        # print("-" * 20 + " Current Conversation History " + "-" * 20)
        # for i, msg in enumerate(self.history):
        #     print(f"Message {i+1}:")
        #     print(f"  Role: {msg.get('role', 'N/A')}") # 使用 .get() 避免 KeyErorr
        #     print(f"  Content:\n{msg.get('content', 'N/A')}")
        #     print("-" * 10) # 添加分隔符
        # print("-" * (40 + len(" Current Conversation History "))) # 打印结束分隔符
        response = self.raw_query(self.history, model=self.model)
        # response_message = response.choices[0].message.content
        msg = response.choices[0].message
        response_message = msg.content or getattr(msg, "reasoning_content", "")
        self.history.append({"role": "assistant", "content": response_message})
        # print("-" * (40 + len(" Current Answer "))) # 打印结束分隔符
        # print(response_message)
        # print("-" * (40 + len(" Current Answer "))) # 打印结束分隔符
        return response_message

    def ask_once(self, content) -> str:
        """
        向模型提问但不将该提问和回答保存在 self.history 中。
        """
        # 构造临时消息列表
        temp_history = self.history.copy()
        temp_history.append({"role": "user", "content": content})
        # 直接调用 API
        response = self.raw_query(temp_history, model=self.model)
        # response_message = response.choices[0].message.content
        msg = response.choices[0].message
        response_message = msg.content or getattr(msg, "reasoning_content", "")
        return response_message

    def analyze(self, text, language='json'):
        pattern = rf'```{language}\s*(.*?)\s*```'
        matches = re.findall(pattern, text, re.DOTALL)
        assert matches, "Answer does not contain the expected code block format."
        content = matches[-1]  # 提取最后一个匹配的内容块
        return content

    def answer_with_analyze(self, content, retries=3, language='json'):
        # 添加用户消息到历史记录
        message = {"role": "user", "content": content}
        self.history.append(message)
        
        # 尝试多次生成答案，直到成功提取预期格式的代码块
        for i in range(retries):
            response = self.raw_query(self.history, model=self.model)
            # print("DEBUG RAW RESPONSE:", response)
            # response_message = response.choices[0].message.content
            msg = response.choices[0].message
            response_message = msg.content or getattr(msg, "reasoning_content", "")
            
            # 利用正则表达式提取代码块内容
            pattern = rf'```{language}\s*(.*?)\s*```'
            matches = re.findall(pattern, response_message, re.DOTALL)
            if matches:
                code_content = matches[-1]
                # 将最终有效的回答添加到历史记录中
                self.history.append({"role": "assistant", "content": response_message})
                return response_message, code_content
            else:
                print(f"Answer does not contain the expected code block format, retrying {i+1} ...")
                print("."*50)
                print("Current response")
                print("."*50)
                print(response_message)
                print("."*50)

                if "deepseek-r1" in self.model.lower():
                    deepseek_limit = 16384
                    try:
                        used = getattr(response.usage, "completion_tokens", 0)
                        if used >= deepseek_limit:
                            print(f"已达到硅基流动/火山引擎 DeepSeek-R1 的 max_tokens 上限 ({used}/{deepseek_limit})，停止重试")
                            break
                    except:
                        pass

        # 达到最大重试次数后仍未成功
        print(f"Answer does not contain the expected code block format, failed after {retries} retries")
        return "(Empty! Extracting code failed.)", "(Empty! Extracting code failed.)"