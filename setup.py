from setuptools import setup, find_packages

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup (
    name = "Princess",
    python_requires = ">3.6.0",
    version = "0.0.1",
    description = "Princess Compiler",
    author = "Vic Nightfall",
    author_email = "vic@nightfall.moe",
    packages = find_packages(),
    install_requires = requirements,

    entry_points = {
        "console_scripts": [
            "princess = princess.__main__:main",
        ]
    },
)