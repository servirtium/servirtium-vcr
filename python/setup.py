from setuptools import setup, find_packages

setup(
    name='servirtium',
    version='2.0.0',
    description='Record/replay HTTP service tests in the Servirtium markdown '
                'tape format — a thin Python (ctypes) wrapper over the Aether VCR core',
    author='Paul Hammant',
    author_email='paul@hammant.org',
    url='https://github.com/servirtium/servirtium-python',
    long_description=open('README.md').read(),
    long_description_content_type="text/markdown",
    license='MIT',
    python_requires='>=3.9',
    packages=find_packages(exclude=['test', 'test.*']),
    # Ship the prebuilt native VCR library inside the package.
    package_data={'servirtium': ['native/*.so', 'native/*.dylib', 'native/*.dll']},
    include_package_data=True,
    # No runtime dependencies: the binding uses only the stdlib (ctypes).
    install_requires=[],
    extras_require={'dev': ['pytest']},
)
