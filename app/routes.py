# routes.py
from flask import Flask, render_template, request, redirect, url_for
from models import db, Donor
from forms import DonorForm

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///blood_bank.db'
app.config['SECRET_KEY'] = 'your_secret_key'
db.init_app(app)

@app.route('/')
def home():
    donors = Donor.query.all()
    return render_template('home.html', donors=donors)

@app.route('/add_donor', methods=['GET', 'POST'])
def add_donor():
    form = DonorForm()
    if form.validate_on_submit():
        new_donor = Donor(name=form.name.data, blood_type=form.blood_type.data)
        db.session.add(new_donor)
        db.session.commit()
        return redirect(url_for('home'))
    return render_template('add_donor.html', form=form)

@app.route('/update_donor/<int:id>', methods=['GET', 'POST'])
def update_donor(id):
    donor = Donor.query.get_or_404(id)
    form = DonorForm(obj=donor)
    if form.validate_on_submit():
        donor.name = form.name.data
        donor.blood_type = form.blood_type.data
        db.session.commit()
        return redirect(url_for('home'))
    return render_template('add_donor.html', form=form)

@app.route('/delete_donor/<int:id>', methods=['POST'])
def delete_donor(id):
    donor = Donor.query.get_or_404(id)
    db.session.delete(donor)
    db.session.commit()
    return redirect(url_for('home'))

if __name__ == '__main__':
    app.run(debug=True)
