class OrganizationUnitsController < ApplicationController
  before_action :set_organization_unit, only: %i[ show edit update destroy ]

  # GET /organization_units or /organization_units.json
  def index
    @organization_units = OrganizationUnit.all
  end

  # GET /organization_units/1 or /organization_units/1.json
  def show
  end

  # GET /organization_units/new
  def new
    @organization_unit = OrganizationUnit.new
  end

  # GET /organization_units/1/edit
  def edit
  end

  # POST /organization_units or /organization_units.json
  def create
    @organization_unit = OrganizationUnit.new(organization_unit_params)

    respond_to do |format|
      if @organization_unit.save
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.update('new_organization_unit', partial: "organization_units/form", locals: { organization_unit: OrganizationUnit.new }),
            turbo_stream.prepend('organization_units', partial: "organization_units/organization_unit", locals: { organization_unit: @organization_unit })
          ]
          end

        format.html { redirect_to organization_unit_url(@organization_unit), notice: "Organization Unit was successfully created." }
        format.json { render :show, status: :created, location: @organization_unit }
      else
        format.turbo_stream do
          render turbo_stream:
            turbo_stream.update('new_organization_unit', partial: "organization_units/form", locals: { organization_unit: @organization_unit })
        end
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_units/1 or /organization_units/1.json
  def update
    respond_to do |format|
      if @organization_unit.update(organization_unit_params)
        format.html { redirect_to organization_unit_url(@organization_unit), notice: "Organization Unit was successfully updated." }
        format.json { render :show, status: :ok, location: @organization_unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_units/1 or /organization_units/1.json
  def destroy
    @organization_unit.destroy

    respond_to do |format|
      format.html { redirect_to organization_units_url, notice: "Organization Unit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_unit
      @organization_unit = OrganizationUnit.find(params[:id])
    end

    def organization_unit_params
      params.require(:organization_unit).permit(:name, :organization_type_id, :parent_id, :isactive, :organization_year, :description)
    end

end
