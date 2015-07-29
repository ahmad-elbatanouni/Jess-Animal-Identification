#!/usr/bin/python

from flask import Flask, request, jsonify
from flask import render_template
# from algos import security
import subprocess

app = Flask(__name__)



@app.route("/", methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        command = ['java', '-classpath', '.:jess.jar', 'test']
        for counter in xrange(1, 12):
            key = 'q' + str(counter)
            command.append(request.form[key])
        # command.append(q1)
        # command.append(q2)
        # command.append(q3)
        java = subprocess.check_output(command).split('\n')
        java = java[0:len(java) - 2]
        first_element_array = java[0].split(' ')
        # print first_element_array[]
        animal_name = first_element_array[len(first_element_array) - 1]
        print animal_name
        return render_template('index.html', java=java, animal=animal_name)
        
    return render_template('index.html')

if __name__ == "__main__":
    app.debug = True
    app.run()