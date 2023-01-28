from flow import stock_data_ml
from prefect.deployments import Deployment
from prefect.filesystems import RemoteFileSystem
from prefect.orion.schemas.schedules import CronSchedule

remote_fs_block = RemoteFileSystem.load("prefect-sb")

deployment = Deployment.build_from_flow(
    flow=stock_data_ml,
    name="stock-prediction-pipeline",
    parameters={"ticker": "005930"},
    infra_overrides={"env": {"PREFECT_LOGGING_LEVEL": "DEBUG"}},
    work_queue_name="instance1",
    storage=remote_fs_block,
    schedule=(CronSchedule(cron="0 0 * * *", timezone="Asia/Seoul")),
)

if __name__ == "__main__":
    deployment.apply()
