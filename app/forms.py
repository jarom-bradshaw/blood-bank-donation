# forms.py
from flask_wtf import FlaskForm
from wtforms import StringField, SelectField, SubmitField
from wtforms.validators import DataRequired

class DonorForm(FlaskForm):
    name = StringField('Name', validators=[DataRequired()])
    blood_type = SelectField('Blood Type', choices=[('A+', 'A+'), ('A-', 'A-'), ('B+', 'B+'), ('B-', 'B-'), ('AB+', 'AB+'), ('AB-', 'AB-'), ('O+', 'O+'), ('O-', 'O-')], validators=[DataRequired()])
    submit = SubmitField('Add Donor')
