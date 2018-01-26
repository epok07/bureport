

<div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">PR+</h1>

            </div>
            <h3>CIMENCAM Production Report+</h3>
            <p> <!--Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.
               Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>Login in. To see it in action.</p>
            
            <?php echo Form::open(array('class'=>"m-t", 'role'=>"form", 'action'=>"")); ?>
            <?php if (isset($_GET['destination'])): ?>
				<?php echo Form::hidden('destination', $_GET['destination']); ?>
			<?php endif; ?>

			<?php if (isset($login_error)): ?>
				<div class="error"><?php echo $login_error; ?></div>
			<?php endif; ?>
                <div class="form-group <?php echo ! $val->error('email') ?: 'has-error' ?> ">
                    <label for="email">Email or Username:</label>
					<?php echo Form::input('email', Input::post('email'), array('class' => 'form-control', 'placeholder' => 'Email or Username', 'autofocus', 'required'=>"")); ?>

					<?php if ($val->error('email')): ?>
						<span class="control-label"><?php echo $val->error('email')->get_message('You must provide a username or email'); ?></span>
					<?php endif; ?>

                </div>
                <div class="form-group <?php echo ! $val->error('password') ?: 'has-error' ?>">
                     <label for="password">Password:</label>
					<?php echo Form::password('password', null, array('class' => 'form-control', 'placeholder' => 'Password')); ?>

					<?php if ($val->error('password')): ?>
						<span class="control-label"><?php echo $val->error('password')->get_message(':label cannot be blank'); ?></span>
					<?php endif; ?>
                </div>
                 <?php echo Form::submit(array('value'=>'Login', 'name'=>'submit', 'class' => 'btn btn-lg btn-primary block full-width m-b')); ?>

                <a href="#"><small>Forgot password?</small></a>
                <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
            <?php echo Form::close(); ?>
            <p class="m-t"> <small>Astrio Tech Solutions &copy; 2017 - 2018</small> </p>
        </div>
    </div>