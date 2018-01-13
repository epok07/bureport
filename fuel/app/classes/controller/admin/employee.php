<?php
class Controller_Admin_Employee extends Controller_Admin
{
	public $template = '_layout/inspinia_main';

	public function action_index()
	{
		$data['employees'] = Model_Employee::find('all');
		$this->template->title = "Employees";
		$this->template->content = View::forge('admin/employee/index', $data);

	}

	public function action_view($id = null)
	{
		$data['employee'] = Model_Employee::find($id);

		$this->template->title = "Employee";
		$this->template->content = View::forge('admin/employee/view', $data);

	}

	public function action_create()
	{
		if (Input::method() == 'POST')
		{
			$val = Model_Employee::validate('create');

			if ($val->run())
			{
				$employee = Model_Employee::forge(array(
					'first_name' => Input::post('first_name'),
					'last_name' => Input::post('last_name'),
					'user_id' => Input::post('user_id'),
					'role_id' => Input::post('role_id'),
					'jobtile_id' => Input::post('jobtile_id'),
					'tel' => Input::post('tel'),
					'email' => Input::post('email'),
					'address1' => Input::post('address1'),
					'address2' => Input::post('address2'),
					'avatar_file' => Input::post('avatar_file'),
					'notes' => Input::post('notes'),
				));

				if ($employee and $employee->save())
				{
					Session::set_flash('success', e('Added employee #'.$employee->id.'.'));

					Response::redirect('admin/employee');
				}

				else
				{
					Session::set_flash('error', e('Could not save employee.'));
				}
			}
			else
			{
				Session::set_flash('error', $val->error());
			}
		}

		$this->template->title = "Employees";
		$this->template->content = View::forge('admin/employee/create');

	}

	public function action_edit($id = null)
	{
		$employee = Model_Employee::find($id);
		$val = Model_Employee::validate('edit');

		if ($val->run())
		{
			$employee->first_name = Input::post('first_name');
			$employee->last_name = Input::post('last_name');
			$employee->user_id = Input::post('user_id');
			$employee->role_id = Input::post('role_id');
			$employee->jobtile_id = Input::post('jobtile_id');
			$employee->tel = Input::post('tel');
			$employee->email = Input::post('email');
			$employee->address1 = Input::post('address1');
			$employee->address2 = Input::post('address2');
			$employee->avatar_file = Input::post('avatar_file');
			$employee->notes = Input::post('notes');

			if ($employee->save())
			{
				Session::set_flash('success', e('Updated employee #' . $id));

				Response::redirect('admin/employee');
			}

			else
			{
				Session::set_flash('error', e('Could not update employee #' . $id));
			}
		}

		else
		{
			if (Input::method() == 'POST')
			{
				$employee->first_name = $val->validated('first_name');
				$employee->last_name = $val->validated('last_name');
				$employee->user_id = $val->validated('user_id');
				$employee->role_id = $val->validated('role_id');
				$employee->jobtile_id = $val->validated('jobtile_id');
				$employee->tel = $val->validated('tel');
				$employee->email = $val->validated('email');
				$employee->address1 = $val->validated('address1');
				$employee->address2 = $val->validated('address2');
				$employee->avatar_file = $val->validated('avatar_file');
				$employee->notes = $val->validated('notes');

				Session::set_flash('error', $val->error());
			}

			$this->template->set_global('employee', $employee, false);
		}

		$this->template->title = "Employees";
		$this->template->content = View::forge('admin/employee/edit');

	}

	public function action_delete($id = null)
	{
		if ($employee = Model_Employee::find($id))
		{
			$employee->delete();

			Session::set_flash('success', e('Deleted employee #'.$id));
		}

		else
		{
			Session::set_flash('error', e('Could not delete employee #'.$id));
		}

		Response::redirect('admin/employee');

	}

}
