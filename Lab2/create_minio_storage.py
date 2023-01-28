from prefect.filesystems import RemoteFileSystem
from dotenv import load_dotenv
import os

load_dotenv()


minio_block = RemoteFileSystem(
    basepath="s3://prefect-storage/deployments/",
    settings={
        "key": os.getenv("AWS_ACCESS_KEY_ID"),
        "secret": os.getenv("AWS_SECRET_ACCESS_KEY"),
        "client_kwargs": {"endpoint_url": os.getenv("PREFECT_MINIO_ENDPOINT_URL")},
    },
)
minio_block.save("prefect-sb")
