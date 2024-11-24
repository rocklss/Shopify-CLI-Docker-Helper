# **Shopify CLI Docker Helper**

This project provides a Dockerized environment for using **Shopify CLI**, along with Git and Node.js, to develop and manage Shopify themes. It simplifies the setup process and ensures consistency across development environments.

---

## **Features**

- Pre-installed **Shopify CLI** (latest version).
- Includes **Git** for version control.
- Supports **Node.js 20**.
- `xdg-utils` installed for Shopify CLI login verification.
- Configured scripts for building, running, and accessing the Docker container.
- Easy Shopify theme development using `shopify theme dev`.

---

## **Setup**

### **Prerequisites**

- Docker installed on your system.
- An active Shopify store or developer account.
- SSH key configured for accessing private repositories (optional).

---

## **Usage**

### **1. Build the Docker Image**

To build the Docker image:

```bash
npm run docker-build
```

This creates a Docker image named `shopify-cli-image` with all required dependencies.

---

### **2. Run the Docker Container**

To run the container interactively:

```bash
npm run docker-run
```

- The container will:
    - Mount the current directory to `/workspace` in the container.
    - Mount your local SSH keys (`~/.ssh`) for Git authentication.
    - Map port `9292` for Shopify theme preview.

---

### **3. Access the Running Container**

If you need to open another terminal session in the running container:

```bash
npm run docker-exec
```

---

### **4. Start Shopify Theme Development**

Run the following command to start the Shopify theme preview:

```bash
npm run theme-dev
```

- The Shopify theme preview will be accessible at [http://127.0.0.1:9292](http://127.0.0.1:9292/).
- Ensure your store login is completed via Shopify CLI.

---

## **Project Structure**

```bash
bash
Copy code
.
├── Dockerfile        # Dockerfile to define the container environment
├── package.json      # NPM scripts for managing Docker lifecycle
└── README.md         # Documentation
```

---

## **Scripts Overview**

| **Script** | **Description** |
| --- | --- |
| `docker-build` | Builds the Docker image with the name `shopify-cli-image`. |
| `docker-run` | Runs the Docker container interactively, mounting current directory and SSH keys, and exposing port `9292`. |
| `docker-exec` | Opens a new terminal session in the running container. |
| `theme-dev` | Starts Shopify theme development server inside the container. |

---

## **Environment Details**

- **Base Image:** Node.js 20 (Debian Bullseye)
- **Installed Tools:**
    - Git
    - Shopify CLI (latest)
    - xdg-utils (for CLI login verification)
- **Working Directory in Container:** `/workspace`

---

## **Notes**

1. If you need to install additional dependencies, update the `Dockerfile` and rebuild the image using `npm run docker-build`.
2. Ensure your SSH keys are set up properly if working with private Git repositories.
3. To persist data, use the mounted volume (`v $(pwd):/workspace`) which syncs your local directory with the container.

---

## **Contributing**

Feel free to fork and modify the project. Contributions are welcome via pull requests.

---

## **License**

This project is licensed under the MIT License.

---

Let me know if you need any additional details or modifications! 🚀