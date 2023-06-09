# ใช้ Node.js เป็นฐาน
FROM node:latest

# สร้างโฟลเดอร์ที่จะใช้เก็บแอปพลิเคชัน Vue.js
WORKDIR /app

# คัดลอก package.json และ package-lock.json ไปยังโฟลเดอร์ทำงาน
COPY package*.json ./

# ติดตั้ง dependencies ด้วยคำสั่ง npm
RUN npm install

# คัดลอกโค้ดแอปพลิเคชัน Vue.js ไปยังโฟลเดอร์ทำงาน
COPY . .

# กำหนดคำสั่งเริ่มต้นเมื่อ Docker container ถูกสร้างขึ้น
CMD [ "npm", "run", "serve" ]
