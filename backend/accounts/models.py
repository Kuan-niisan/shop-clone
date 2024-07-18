from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
# Create your models here.

class UserManager(BaseUserManager):
    def create_user(self, email, username, age, university, password=None):
        if not email:
            raise ValueError("Users must have an email address")
        if not username:
            raise ValueError("Users must have a username")
        
        
        user = self.model(
            email=self.normalize_email(email),
            username=username,
            age=age,
            university=university,
        )
        
        user.set_password(password)
        user.save(using=self._db)
        return user
    
    def create_superuser(self, email, username, age, university, password=None):
        user = self.create_user(
            email=email,
            username=username,
            age=age,
            university=university,
            password=password,
        )
        user.is_superuser = True
        user.save(using=self._db)
        return user   
    
    
class User(AbstractBaseUser):
    UNIVERSITY_CHOICES = [
        ('SIT', 'SIT'),
        ('HUST', 'HUST'),
    ]
    
    username = models.CharField(max_length=200)
    age = models.IntegerField()
    email = models.EmailField(max_length=100, unique=True)
    university = models.CharField(max_length=4, choices=UNIVERSITY_CHOICES)
    password = models.CharField(max_length=50)
    is_active = models.BooleanField(default=False)
    is_user = models.BooleanField(default=False)
    is_creator = models.BooleanField(default=False)
    
    
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username', 'age', 'university']
    
    objects = UserManager()
    
    def __str__(self):
        return self.email
    
    def has_perm(self, perm, obj=None):
        return self.is_superuser

    def has_module_perms(self, app_label):
        return self.is_superuser
    
    @property
    def is_staff(self):
        return self.is_superuser 