from setuptools import setup, find_packages

setup(
    name="pydbmanager",
    version="0.1",
    author="Rohit Kosamkar",
    author_email="kosamkar.r@northeastern.edu",
    description="A Python package to manage SQL Server database connections and operations.",
    long_description=open("README.md", encoding="utf-8").read(),
    long_description_content_type="text/markdown",
    url="https://github.com/rohit180497/PyDBManager",  # Update with your repo URL
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        "pyodbc",
        "pandas",
        "python-dotenv"
    ],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.8",
)
