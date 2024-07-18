from django.shortcuts import render, redirect
from .models import User
from django.contrib.auth import authenticate, login
from django.http import JsonResponse
from .models import User
import json


def register(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            username = data.get('username')
            age = data.get('age')
            email = data.get('email')
            password = data.get('password')
            university = data.get('university')

            user = User.objects.create_user(email=email, username=username, age=age, university=university, password=password)
            
            return JsonResponse({'message': 'User registered successfully'}, status=201)
        except Exception as e:
            return JsonResponse({'error': str(e)}, status=400)
    else:
        return JsonResponse({'error': 'Only POST requests are allowed'}, status=405)

def login(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            email = data.get('email')
            password = data.get('password')
            
            user = authenticate(request, email=email, password=password)
            
            if user is not None:
                login(request, user)
                user.is_active = True
                user.save
                return JsonResponse({'message': 'Login successful'}, status=200)
            else:
                return JsonResponse({'error': 'Invalid credentials'}, status=401)
        except Exception as e:
            return JsonResponse({'error': str(e)}, status=400)
    else:
        return JsonResponse({'error': 'Method not allowed'}, status=405)
    