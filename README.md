# cloud-run-uvicorn-fastapi-minimal

Create GCP Artifact Registry repo:
```
gcloud artifacts repositories create uvicorn-repo --repository-format=docker --location=us-west2 --description="Docker repository"
```

Build image:
```
gcloud builds submit --region=us-west2 --tag us-west2-docker.pkg.dev/fallbekken/uvicorn-repo/uvicorn-image:tag1
```

Then set up a Cloud Run service manually in GCP Console. Take care to expose port 3000.