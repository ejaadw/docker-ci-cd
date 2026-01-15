# Mengambil base image Node.js versi ringan
FROM node:18-alpine

# Menentukan folder kerja di dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json ke container
COPY package*.json ./

# Install dependency (express)
RUN npm install

# Copy semua file project ke container
COPY . .

# Membuka port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]