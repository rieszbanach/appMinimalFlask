# -*- coding: utf-8 -*-
from app import app
from flask import jsonify
from flask import Flask, request, render_template

@app.route('/')
def my_form():
		return render_template('my_form.html')






