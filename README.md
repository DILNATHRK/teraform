Here's your updated `README.md` with the **Apache License 2.0** section added:

---

```markdown
# 🚀 Azure Virtual Machine Deployment with Terraform (Free Tier Friendly)

This project uses **Terraform** to provision an **Ubuntu Linux Virtual Machine** in **Microsoft Azure**, along with the necessary network infrastructure — all while staying within the **Azure Free Tier** limits.

---

## 📦 Project Structure

```
azure-vm-terraform/
├── main.tf              # Core Terraform config: VM, VNet, NIC, IP
├── variables.tf         # Variable definitions
├── outputs.tf           # Outputs like public IP
├── terraform.tfvars     # Actual values for variables (e.g., admin credentials)
└── README.md            # Project documentation
```

---

## ✅ What This Project Does

- Creates a **Resource Group** (`myTFResourceGroup`)
- Provisions a **Virtual Network** and **Subnet**
- Allocates a **Dynamic Public IP**
- Deploys a **Standard_B1s Ubuntu VM** (Free Tier eligible)
- Outputs the **public IP** for SSH access

---

## 🔧 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.1+)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- An Azure subscription with **Free Tier**
- Run `az login` before applying the plan

---

## ⚙️ Usage

1. **Clone the repo**

```bash
git clone https://github.com/your-username/azure-vm-terraform.git
cd azure-vm-terraform
```

2. **Initialize Terraform**

```bash
terraform init
```

3. **Review the plan**

```bash
terraform plan
```

4. **Apply the changes**

```bash
terraform apply
```

5. **SSH into the VM**

Once you get the public IP from the output:

```bash
ssh azureuser@<public_ip>
```

Use the username and password defined in `terraform.tfvars`.

---

## 📄 Example `terraform.tfvars`

```hcl
admin_username = "azureuser"
admin_password = "MySecurePassword123!"
```

> 💡 Make sure your password meets Azure's complexity requirements.

---

## 🧼 Cleanup

To delete all resources and avoid charges:

```bash
terraform destroy
```

---

## 🛡️ Notes on Free Tier

- VM size used: `Standard_B1s` (free up to 750 hours/month)
- OS: Ubuntu 18.04 LTS (no license cost)
- Public IP: Dynamic (free)
- Disk: Standard HDD (no premium cost)

---

---

## 📜 License

This project is licensed under the **Apache License 2.0**.  
See the [LICENSE](LICENSE) file for full license text.
```

---

