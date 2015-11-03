class FixturesController < ApplicationController
  # GET /fixtures
  # GET /fixtures.json
  def index
    @fixtures = Fixture.all
    @fixtures = Fixture.paginate(:page => params[:page], :per_page => 3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fixtures }
    end
  end

  # GET /fixtures/1
  # GET /fixtures/1.json
  def show
    @fixtures = Fixture.all
    @fixture = Fixture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fixture }
    end
  end

  # GET /fixtures/new
  # GET /fixtures/new.json
  def new
  
	@competition = Competition.find(params[:competition_id])
	session[:competition_id] = @competition.id
	@teamsInComp = @competition.teams
    @fixture = Fixture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fixture }
    end
  end


  # POST /fixtures
  # POST /fixtures.json
  def create
    id = session[:competition_id]
	@competition = Competition.find(id)
    @fixture = Fixture.new(params[:fixture])
	@fixture.competition_id = @competition.id

    respond_to do |format|
      if @fixture.save
        format.html { redirect_to @fixture, notice: 'Fixture was successfully created.' }
        format.json { render json: @fixture, status: :created, location: @fixture }
      else
        format.html { render action: "new" }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  
  # GET /fixtures/1/edit
  def edit
    @fixture = Fixture.find(params[:id])
	@hometeam = @fixture.hometeam
	@awayteam = @fixture.awayteam
	
  end
  
  # PUT /fixtures/1
  # PUT /fixtures/1.json
  def update
  
    @fixture = Fixture.find(params[:id])

	@fixture.winningteam.points = @fixture.winningteam.points + 3
	@fixture.winningteam.save
    respond_to do |format|
      if @fixture.update_attributes(params[:fixture])
        format.html { redirect_to @fixture, notice: 'Fixture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixtures/1
  # DELETE /fixtures/1.json
  def destroy
    @fixture = Fixture.find(params[:id])
    @fixture.destroy

    respond_to do |format|
      format.html { redirect_to fixtures_url }
      format.json { head :no_content }
    end
  end
end
