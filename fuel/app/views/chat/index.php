<?php 
use Carbon\Carbon;

Carbon::setLocale('fr');
?>	

<!--
	<div class="row">
		<h2>Listing <span class='muted'>Chats</span></h2>
	<br>
	<?php if ($chats): ?>
	<table class="table table-striped">
				<thead>
					<tr>
						<th>Message</th>
						<th>From user id</th>
						<th>To user id</th>
						<th>Status</th>
						<th>Chat message id</th>
						<th>Private</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody>
			<?php foreach ($chats as $item): ?>		<tr>

						<td><?php echo $item->message; ?></td>
						<td><?php echo $item->from_user_id; ?></td>
						<td><?php echo $item->to_user_id; ?></td>
						<td><?php echo $item->status; ?></td>
						<td><?php echo $item->chat_message_id; ?></td>
						<td><?php echo $item->private; ?></td>
						<td>
							<div class="btn-toolbar">
								<div class="btn-group">
									<?php echo Html::anchor('chat/view/'.$item->id, '<i class="icon-eye-open"></i> View', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('chat/edit/'.$item->id, '<i class="icon-wrench"></i> Edit', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('chat/delete/'.$item->id, '<i class="icon-trash icon-white"></i> Delete', array('class' => 'btn btn-sm btn-danger', 'onclick' => "return confirm('Are you sure?')")); ?>					</div>
							</div>

						</td>
					</tr>

			<?php endforeach; ?>	</tbody>
	</table>

	</div>
	

<?php else: ?>
<p>No Chats.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('chat/create', 'Add new Chat', array('class' => 'btn btn-success')); ?>

</p>

-->

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">

                    <strong>Chat room </strong> can be used to create chat room in your app.
                    You can also use a small chat in the right corner to provide live discussion.

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">

                <div class="ibox chat-view">

                    <div class="ibox-title">
                        <small class="pull-right text-muted">Last message:  Mon Jan 26 2015 - 18:39:23</small>
                         Chat room panel
                    </div>


                    <div class="ibox-content">

                        <div class="row">

                            <div class="col-md-9 ">
                            	<?php if($chats): ?>
                                <div class="chat-discussion">
									<?php foreach ($chats as $item): ?>
									<?php if ($item->from_user_id != $this->current_user->id): ?>
                                    <div class="chat-message left">
                                        <?= Model_Employee::get_avatar($item->from_user_id, 48,'message-avatar'); ?>
                                        <div class="message">
                                            <a class="message-author" href="#"> <?= $item->sender->last_name;  ?>  </a>
											<span class="message-date"> <?php echo Carbon::createFromTimestamp($item->created_at, 'Europe/Berlin')->format('l M jS, Y - h:i:s') ;
											//  Mon Jan 26 2015 - 18:39:23; ?> </span>
                                            <span class="message-content">
											<?= $item->message;  ?>
                                            </span>
                                        </div>
                                    </div>
                                	<?php else: ?>
                                    <div class="chat-message right">
                                        <?= Model_Employee::get_avatar($item->from_user_id, 48,'message-avatar'); ?>
                                        <div class="message">
                                            <a class="message-author" href="#"> <?= $item->sender->last_name;  ?>  </a>
											<span class="message-date"><?php echo Carbon::createFromTimestamp($item->created_at, 'Europe/Berlin')->format('l M jS, Y - h:i:s') ;
											//  Mon Jan 26 2015 - 18:39:23; ?> </span>
                                            <span class="message-content">
											<?= $item->message;  ?>
                                            </span>
                                        </div>
                                    </div>
                               		<?php endif; ?>
                                    <?php endforeach; ?>
                                    <!--
                                    <div class="chat-message right">
                                        <img class="message-avatar" src="img/a2.jpg" alt="">
                                        <div class="message">
                                            <a class="message-author" href="#"> Michael Smith </a>
                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                            <span class="message-content">
											There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.
                                            </span>
                                        </div>
                                    </div>
                                    <div class="chat-message left">
                                        <img class="message-avatar" src="img/a5.jpg" alt="">
                                        <div class="message">
                                            <a class="message-author" href="#"> Alice Jordan </a>
                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                            <span class="message-content">
											All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                                It uses a dictionary of over 200 Latin words.
                                            </span>
                                        </div>
                                    </div>
                                    <div class="chat-message right">
                                        <img class="message-avatar" src="img/a6.jpg" alt="">
                                        <div class="message">
                                            <a class="message-author" href="#"> Mark Smith </a>
                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                            <span class="message-content">
											All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                                It uses a dictionary of over 200 Latin words.
                                            </span>
                                        </div>
                                    </div>
                                    -->

                                </div>
                            	<?php endif; ?>

                            </div>
                            <div class="col-md-3">
                                <div class="chat-users">
                                <?php if($employees): ?>
                                    <div class="users-list">
                                    <?php foreach ($employees as $item): ?>
                                        <div class="chat-user">
                                        	<?php //if($item->is_online): ?>
                                             <span class="pull-right label label-primary">Online</span>
                                             <?php //endif; ?>
                                            <?= Model_Employee::get_avatar($item->id, 48,'chat-avatar'); ?>
                                            <div class="chat-user-name">
                                                <a href="#"><?= $item->first_name .' '. $item->last_name; ?></a>
                                            </div>
                                        </div>
                                        <?php endforeach; ?>
                                    </div>
                                    <?php endif; ?>

                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="chat-message-form">

                                    <div class="form-group">

                                        <textarea class="form-control message-input" name="message" placeholder="Enter message text"></textarea>
                                    </div>

                                </div>
                            </div>
                        </div>


                    </div>

                </div>
        </div>

    </div>


