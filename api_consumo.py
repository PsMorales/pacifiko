import requests


def get_high_earning_employees():
    headers = {
            'Accept': '*/*',
            'User-Agent': 'Thunder Client (https://www.thunderclient.com)'
        }

    url = "http://dummy.restapiexample.com/api/v1/employees"

    with requests.Session() as s:
        s.headers.update(headers)
        response = s.get(url)
        if response.status_code == 200:
            data = response.json()
            high_earning_employees = [employee for employee in data['data'] if float(employee['employee_salary']) > 300000]

            employees = high_earning_employees
            for employee in employees:
                employee_name = employee["employee_name"]
                employee_salary = employee["employee_salary"]
                print(f"Nombre del empleado: {employee_name}, Salario: {employee_salary}")

            return high_earning_employees
        else:
            print(f"Error en la solicitud. Código de estado: {response.status_code}")


def create_employee_record():
    headers = {
            'Accept': '*/*',
            'User-Agent': 'Thunder Client (https://www.thunderclient.com)'
        }
    url = "http://dummy.restapiexample.com/api/v1/create"
    payload = {
        "id": 24,
        "employee_name": "Luis Sosa",
        "employee_salary": "4000",
        "employee_age": "24",
        "profile_image": ""
    }
    with requests.Session() as s:
        s.headers.update(headers)
        response = s.post(url, data=payload)
        if response.status_code == 200:
            data = response.json()
            return data
        else:
            return "error"


def get_user_id(employee_name):
    headers = {
            'Accept': '*/*',
            'User-Agent': 'Thunder Client (https://www.thunderclient.com)'
        }
    url = f"http://dummy.restapiexample.com/api/v1/employees"
    with requests.Session() as s:
        s.headers.update(headers)
        response = s.get(url)
        if response.status_code == 200:
            data = response.json()
            for employee in data['data']:
                if employee['employee_name'] == employee_name:
                    return employee['id']
    return None


high_earning_count = len(get_high_earning_employees())
print("1. Cantidad de empleados que ganan más de $300,000:", high_earning_count)

created_employee_data = create_employee_record()
employee_name = "Luis Sosa"
print("2. Registro de empleado creado:", created_employee_data)

your_user_id = get_user_id(employee_name)
print("3. Identificación de usuario de tu registro:", your_user_id)