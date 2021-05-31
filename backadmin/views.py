from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.contrib.auth import authenticate, login, logout

from django.contrib.auth.decorators import login_required
from backadmin import models

from backadmin.decorators import unauthenticated_user, allowed_users, admin_only

from django.contrib import messages

# from admin.forms import Std_parentsForm
from backadmin.models import School, Std_parents, Driver
from django.contrib.auth.models import User, Group
# Create your views here.

######### USER PERMISIONS ##########
@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_std_parents(request): #หน้า ข้อมูลนักเรียน ผู้ปกครอง <datatables>
    std_parents = Std_parents.objects.all()
    return render(request, 'admins/user_std_parents.html',{'std_parents':std_parents})

@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_view_std_parents(request, id): #ดูข้อมูล นักเรียน ผู้ปกครอง
    std_parents = Std_parents.objects.get(id=id)
    return render(request,'admins/user_std_parents_view.html',{'std_parents':std_parents})

@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_driver(request): #หน้า ข้อมูลคนขับ ผู้ดูแลประจำ <datatables>
    driver = Driver.objects.all()
    return render(request,'admins/user_driver.html',{'driver':driver})

@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_view_driver(request, id): #ดูข้อมูล คนขับ ผู้ดูแลประจำ
    driver = Driver.objects.get(id=id)
    return render(request,'admins/user_driver_view.html',{'driver':driver})

@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_school(request): #หน้า ข้อมูลโรงเรียน <datatables>
    school = School.objects.all()
    return render(request,'admins/user_school.html',{'school':school})

@login_required(login_url='login')
@allowed_users(allowed_roles=['user'])
def user_view_school(request, id): #ดูข้อมูล คนขับ ผู้ดูแลประจำ
    school = School.objects.get(id=id)
    return render(request,'admins/user_school_view.html',{'school':school})





########### LOGIN ADMIN/USER ############
@unauthenticated_user
def loginpage(request): # หน้าล็อกอิน
    if request.method == 'POST' :
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('/index')

        else:
            print('รหัสผ่านไม่ถูก')
            messages.success(request, "Username OR Password is incorect")
            return redirect('/')

    return render(request, 'admins/login.html')

def logoutuser(request):
    logout(request)
    return redirect('login')





########## ADMIN PERMISIONS ##########
@login_required(login_url='login')
@admin_only
def index(request): #หน้าแดชบอร์ด โชว์จำนวน นักเรียน คนขับ โรงเรียน ผู้ดูแลระบบ
    std_parents = Std_parents.objects.all()
    std_parents_count = std_parents.count()

    driver = Driver.objects.all()
    driver_count = driver.count()

    school = School.objects.all()
    school_count = school.count()

    admins = User.objects.all()
    admins_count = admins.count()

    allcount = {
        'std_parents_count':std_parents_count,
        'driver_count':driver_count,
        'school_count':school_count,
        'admins_count':admins_count,
    }
    return render(request, 'admins/index.html', allcount)



@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def std_parents(request): #หน้า ข้อมูลนักเรียน ผู้ปกครอง <datatables>
    std_parents = Std_parents.objects.all()
    return render(request, 'admins/std_parents.html',{'std_parents':std_parents})

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def std_parents_adds(request): #เพิ่มข้อมูล นักเรียน ผู้ปกครอง
    if request.method == 'POST':
        stdfname = request.POST.get('stdfname')
        stdlname = request.POST.get('stdlname')
        stdaddress = request.POST.get('stdaddress')
        stdemail = request.POST.get('stdemail')
        stdcounty = request.POST.get('stdcounty')
        stdpostalcode = request.POST.get('stdpostalcode')
        stdmacaddress = request.POST.get('stdmacaddress')
        fatherfname = request.POST.get('fatherfname')
        fatherlname = request.POST.get('fatherlname')
        motherfname = request.POST.get('motherfname')
        motherlname = request.POST.get('motherlname')
        parenttel = request.POST.get('parenttel')
        parenttelback = request.POST.get('parenttelback')

        std_parents = Std_parents(
            stdfname=stdfname,
            stdlname=stdlname,
            stdaddress=stdaddress,
            stdemail=stdemail,
            stdcounty=stdcounty,
            stdpostalcode=stdpostalcode,
            stdmacaddress=stdmacaddress,
            fatherfname=fatherfname,
            fatherlname=fatherlname,
            motherfname=motherfname,
            motherlname=motherlname,
            parenttel=parenttel,
            parenttelback=parenttelback
        )
        std_parents.save()
        messages.success(request, "เพิ่มข้อมูลสำเร็จ")
        return redirect('/std_parents/')
    return render(request, 'admins/std_parents_add.html')

@allowed_users(allowed_roles=['admin'])
def delete_std_parents(request, id): #ลบข้อมูล นักเรียน ผู้ปกครอง
    std_parents = Std_parents.objects.get(id=id)
    std_parents.delete()
    return redirect('/std_parents')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def edit_std_parents(request, id): #แก้ไขข้อมูล นักเรียน ผู้ปกครอง
    std_parents = Std_parents.objects.get(id=id)
    return render(request,'admins/std_parents_edit.html',{'std_parents':std_parents})

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update_std_parents(request, id): #อัพเดทข้อมูลที่แก้ไข นักเรียน ผู้ปกครอง
    std_parents = Std_parents.objects.get(id=id)
    std_parents.stdfname = request.POST['stdfname']
    std_parents.stdlname = request.POST['stdlname']
    std_parents.stdaddress = request.POST['stdaddress']
    std_parents.stdemail = request.POST['stdemail']
    std_parents.stdcounty = request.POST['stdcounty']
    std_parents.stdpostalcode = request.POST['stdpostalcode']
    std_parents.stdmacaddress = request.POST['stdmacaddress']
    std_parents.fatherfname = request.POST['fatherfname']
    std_parents.fatherlname = request.POST['fatherlname']
    std_parents.motherfname = request.POST['motherfname']
    std_parents.motherlname = request.POST['motherlname']
    std_parents.parenttel = request.POST['parenttel']
    std_parents.parenttelback = request.POST['parenttelback']
    std_parents.save()
    return redirect('/std_parents')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def view_std_parents(request, id): #ดูข้อมูล นักเรียน ผู้ปกครอง
    std_parents = Std_parents.objects.get(id=id)
    return render(request,'admins/std_parents_view.html',{'std_parents':std_parents})




@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def driver(request): #หน้า ข้อมูลคนขับ ผู้ดูแลประจำ <datatables>
    driver = Driver.objects.all()
    return render(request,'admins/driver.html',{'driver':driver})

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def driver_adds(request): #เพิ่มข้อมูล คนขับ ผู้ดูแลประจำ
    if request.method == 'POST':
        driverfname = request.POST.get('driverfname')
        driverlname = request.POST.get('driverlname')
        drivertel = request.POST.get('drivertel')
        attendantfname = request.POST.get('attendantfname')
        attendantlname = request.POST.get('attendantlname')
        attendanttel = request.POST.get('attendanttel')
        brand = request.POST.get('brand')
        vancode = request.POST.get('vancode')
        schoolcode = request.POST.get('schoolcode')
        driver = Driver(
            driverfname=driverfname,
            driverlname=driverlname,
            drivertel=drivertel,
            attendantfname=attendantfname,
            attendantlname=attendantlname,
            attendanttel=attendanttel,
            brand=brand,
            vancode=vancode,
            schoolcode=schoolcode
        )
        driver.save()
        return redirect('/driver')
    return render(request, 'admins/driver_add.html')

@allowed_users(allowed_roles=['admin'])
def delete_driver(request, id): #ลบข้อมูล คนขับ ผู้ดูแลประจำ
    driver = Driver.objects.get(id=id)
    driver.delete()
    return redirect('/driver')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def edit_driver(request, id): #แก้ไขข้อมูล คนขับ ผู้ดูแลประจำ
    driver = Driver.objects.get(id=id)
    return render(request,'admins/driver_edit.html',{'driver':driver})

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update_driver(request, id): #อัพเดทข้อมูลที่แก้ไข คนขับ ผู้ดูแลประจำ
    driver = Driver.objects.get(id=id)
    driver.driverfname = request.POST['driverfname']
    driver.driverlname = request.POST['driverlname']
    driver.drivertel = request.POST['drivertel']
    driver.attendantfname = request.POST['attendantfname']
    driver.attendantlname = request.POST['attendantlname']
    driver.attendanttel = request.POST['attendanttel']
    driver.brand = request.POST['brand']
    driver.vancode = request.POST['vancode']
    driver.schoolcode = request.POST['schoolcode']
    driver.save()
    return redirect('/driver')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def view_driver(request, id): #ดูข้อมูล คนขับ ผู้ดูแลประจำ
    driver = Driver.objects.get(id=id)
    return render(request,'admins/driver_view.html',{'driver':driver})





@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def school(request): #หน้า ข้อมูลโรงเรียน <datatables>
    school = School.objects.all()
    return render(request,'admins/school.html',{'school':school})
    
@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def school_adds(request): #เพิ่มข้อมูล คนขับ ผู้ดูแลประจำ
    if request.method == 'POST':
        schoolname = request.POST.get('schoolname')
        schoolcode = request.POST.get('schoolcode')
        schooladdress = request.POST.get('schooladdress')
        schoolmail = request.POST.get('schoolmail')
        schooltel = request.POST.get('schooltel')
        schoolfax = request.POST.get('schoolfax')
        
        school = School(
            schoolname=schoolname,
            schoolcode=schoolcode,
            schooladdress=schooladdress,
            schoolmail=schoolmail,
            schooltel=schooltel,
            schoolfax=schoolfax
        )
        school.save()
        return redirect('/school')
    return render(request, 'admins/school_add.html')

@allowed_users(allowed_roles=['admin'])
def delete_school(request, id): #ลบข้อมูล คนขับ ผู้ดูแลประจำ
    school = School.objects.get(id=id)
    school.delete()
    return redirect('/school')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def edit_school(request, id): #แก้ไขข้อมูล คนขับ ผู้ดูแลประจำ
    school = School.objects.get(id=id)
    return render(request,'admins/school_edit.html',{'school':school})

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update_school(request, id): #อัพเดทข้อมูลที่แก้ไข คนขับ ผู้ดูแลประจำ
    school = School.objects.get(id=id)
    school.schoolname = request.POST['schoolname']
    school.schoolcode = request.POST['schoolcode']
    school.schooladdress = request.POST['schooladdress']
    school.schoolmail = request.POST['schoolmail']
    school.schooltel = request.POST['schooltel']
    school.schoolfax = request.POST['schoolfax']
    school.save()
    return redirect('/school')

@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def view_school(request, id): #ดูข้อมูล คนขับ ผู้ดูแลประจำ
    school = School.objects.get(id=id)
    return render(request,'admins/school_view.html',{'school':school})