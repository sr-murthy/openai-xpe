__all__ = [
    'get_client',
    'get_chat_completion',
    'openai_prompter',
]


# -- IMPORTS --

# -- Standard libraries --
import os

# -- 3rd party libraries --
import click

from openai import OpenAI

# -- Internal libraries --


CLIENTS = {}


def get_client() -> OpenAI:
    """Returns an OpenAI client using an API key sourced from the OS environment.
    """
    return OpenAI(api_key=os.environ['OPENAI_API_KEY'])


def get_chat_completion(client: OpenAI, model: str, prompt: str, /) -> str:
    """:py:class:`str` : Calls the OpenAI API to get a chat completion.
    """
    response = client.chat.completions.create(
        model=model,
        messages=[{"role": "user", "content": prompt}],
    )

    return response.choices[0].message.content


@click.command
@click.option('--model', type=str, required=True, help='Type of OpenAI model to use')
@click.option('--prompt', type=str, required=True, help='Model prompt')
def openai_prompter(model: str, prompt: str) -> None:
    """:py:class:`str` : Calls ``get_chat_completion`` to query the model with the given prompt and prints the response.
    """
    try:
        client = CLIENTS[model]
    except KeyError:
        client = get_client()
        CLIENTS[model] = client

    print(get_chat_completion(client, model, prompt))


if __name__ == '__main__':
    openai_prompter()
