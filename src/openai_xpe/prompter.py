import os

import click
from openai import OpenAI


O1_MINI = 'o1-mini'
GPT_4O_MINI = 'gpt-4o-mini'

clients = {}


def get_client() -> OpenAI:
    """Returns an OpenAI client using an API key sourced from the OS environment.
    """
    return OpenAI(api_key=os.environ['OPENAI_API_KEY'])


def get_chat_completion(client: OpenAI, model: str, prompt: str, /) -> str:
    """Calls the OpenAI API to get a chat completion.
    """
    response = client.chat.completions.create(
        model=model,
        messages=[{"role": "user", "content": prompt}],
    )
    return response.choices[0].message.content


@click.command
@click.option('--model', type=str, required=True, help='Type of OpenAI model to use')
@click.option('--prompt', type=str, required=True, help='Model prompt')
def prompter(model: str, prompt: str) -> str:
    """Provides a cursor prompt and calls ``get_chat_completion`` with the model prompt 
    """
    #import ipdb; ipdb.set_trace()
    try:
        client = clients[model]
    except KeyError:
        client = get_client()
        clients[model] = client

    print(get_chat_completion(client, model, prompt))


if __name__ == '__main__':
    prompter()
