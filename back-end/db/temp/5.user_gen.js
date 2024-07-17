const fetch = require('node-fetch');
const numberOfUsers = 100000;
const baseUrl = 'http://localhost:8000';

async function createUser(email, password) {
    const response = await fetch(`${baseUrl}/auth/register`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email_address: email, password: password })
    });

    if (response.ok) {
        console.log(`Created user ${email}`);
    } else {
        console.error(`Failed to create user ${email}:`, await response.text());
    }
}

async function createUsers() {
    for (let i = 9088; i < numberOfUsers; i++) {
        const email = `test${i}@gmail.com`; // Tạo email tự động
        const password = 'password123'; // Mật khẩu cho tất cả user
        await createUser(email, password);
    }
}

createUsers();
