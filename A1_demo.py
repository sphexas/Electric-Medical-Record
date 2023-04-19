import tkinter as tk

class PatientRecordSystem:
    def __init__(self, master):
        self.master = master
        self.master.title("Disease case entry system")

        # 创建控件
        self.label1 = tk.Label(self.master, text="Name：")
        self.entry1 = tk.Entry(self.master)
        self.label2 = tk.Label(self.master, text="Gender：")
        self.var_gender = tk.StringVar()
        self.radiobutton1 = tk.Radiobutton(self.master, text="Male", variable=self.var_gender, value="Male")
        self.radiobutton2 = tk.Radiobutton(self.master, text="Female", variable=self.var_gender, value="Female")
        self.label3 = tk.Label(self.master, text="Age：")
        self.entry3 = tk.Entry(self.master)
        self.label4 = tk.Label(self.master, text="Symptom：")
        self.text4 = tk.Text(self.master, height=5, width=30)
        self.button_submit = tk.Button(self.master, text="Submit", command=self.submit)

        # 布局控件
        self.label1.grid(row=0, column=0)
        self.entry1.grid(row=0, column=1)
        self.label2.grid(row=1, column=0)
        self.radiobutton1.grid(row=1, column=1)
        self.radiobutton2.grid(row=1, column=2)
        self.label3.grid(row=2, column=0)
        self.entry3.grid(row=2, column=1)
        self.label4.grid(row=3, column=0)
        self.text4.grid(row=3, column=1)
        self.button_submit.grid(row=4, column=0)

    def submit(self):
        # 保存病患信息到文件或数据库中
        name = self.entry1.get()
        gender = self.var_gender.get()
        age = self.entry3.get()
        symptoms = self.text4.get("1.0", tk.END)
        print(f"Name：{name}\nGender：{gender}\nAge：{age}\nSymptoms：{symptoms}")

if __name__ == "__main__":
    root = tk.Tk()
    app = PatientRecordSystem(root)
    root.mainloop()
