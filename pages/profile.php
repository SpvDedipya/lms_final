
<section>
	<div class="card text-center">
		<div class="card-header"> Profile </div>
		<div class="card-body">
			<form>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Email address</label>
					<input type="email" id="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" id="password" class="form-control" id="exampleInputPassword1"> </div>
				<div class="mb-3 form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check me out</label>
				</div>

				<button type="button" class="btn btn-pr  imary" onclick="profileUpdate(<?PHP ?>)">Submit</button>
			</form>
		</div>
		<div class="card-footer text-muted"> 2 days ago </div>
	</div>
</section>