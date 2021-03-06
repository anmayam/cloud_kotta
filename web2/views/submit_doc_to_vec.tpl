<div class="container">
<div class="page-header">
  <h2>Submit Task</h2>
</div>

<p>Please provide the information below to submit a Document2Vector task.</p>
<div class="form-wrapper">
  <form role="form" action="{{get_url('submit_task')}}" method="post" name="submit_task">

    <input type="hidden" name="jobtype" id="jobtype" value="{{jobtype}}" /><br/>

    <input type="hidden" name="username" value="{{session["user_id"]}}"/>

    <input type="hidden" name="email" value="{{session["email"]}}"/>

    <div class="row">
      <div class="form-group col-md-4">
        <label for="document_url">Document file URL <font color=#800000>*</font> </label>
	<input class="form-control input-lg input_url required" type="URL" name="input_url" placeholder="https://...document.csv" />
      </div>
    </div>

    <div class="row">
      <div class="form-group col-md-4">
        <label for="model_url">Model file URL </label>
        <input class="form-control input-lg input_url" type="URL" name="model_url" placeholder="https://...mdl.pkl" />
      </div>
    </div>

    <div class="row">
      <div class="form-group col-md-4">
        <label for="model_url">Parameters file URL </label>
        <input class="form-control input-lg input_url" type="URL" name="params_url" placeholder="https://...params.json" />
      </div>
    </div>

    <div class="row">
      <div class="form-group col-md-4">
        <label for="walltime">Walltime in minutes <font color=#800000>*</font> </label>
        <input class="form-control input-lg required" type="text" name="walltime" id="walltime"  value="5"/>
      </div>
    </div>

    <div class="row">
      <div class="form-group col-md-4">
        <label for="queue">Deployment Type</label>
	    <select class="form-control input-lg required" id="queue" name="queue" default="Test">
    	       <option value="Test">Testing/Dev</option>
	       <option value="Prod">Production</option>
            </select>
      </div>
    </div>

    <div class="form-actions">
      <input class="btn btn-lg btn-primary" type="submit" value="submit" />
    </div>
  </form>
</div>

%end

</div>
%rebase('views/base', title='Turing-Submit')
