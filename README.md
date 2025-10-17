@"
# Mi App CI/CD 🚀

**GitHub User:** amendes1

Aplicación con pipeline CI/CD completo que se despliega automáticamente via ArgoCD.

## 🛠️ Tech Stack
- GitHub Actions (CI/CD)
- Docker
- Kubernetes
- ArgoCD (GitOps)
- Nginx

## 🔄 Pipeline Flow
1. **Push to GitHub** → triggers GitHub Actions
2. **Build Docker Image** → with commit SHA tag
3. **Push to Docker Hub** → amendes1/mi-app
4. **ArgoCD Auto-Sync** → detects image change
5. **Kubernetes Deployment** → rolling update

## 📁 Structure
- `.github/workflows/` - CI/CD pipelines
- `k8s/` - Kubernetes manifests
- `src/` - Application source code

## 👤 Maintainer
amendes1
"@ | Out-File -FilePath "README.md" -Encoding UTF8