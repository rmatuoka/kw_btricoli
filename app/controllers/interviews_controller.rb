class InterviewsController < ApplicationController
  def index
    @interviews = Interview.all
  end
  
  def ausentes
    @interviews = Interview.all(:conditions => ['ausente = true'])
  end

  def show
    @interview = Interview.find(params[:id])
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(params[:interview])
    
    if @interview.save
      redirect_to interviews_path, :notice => "Item criado com sucesso."
    else
      render :action => 'new'
    end
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    if @interview.update_attributes(params[:interview])
      redirect_to interviews_path, :notice  => "Item atualizado com sucesso."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy
    redirect_to interviews_url, :notice => "Item deletado com sucesso."
  end
  
  def reports
    #QUESTOES 1
    @total_asfalto1 = Interview.sum(:asfalto_1).to_f
    @total_desemprego1 = Interview.sum(:desemprego_1).to_f
    @total_educacao1 = Interview.sum(:educacao_1).to_f
    @total_enchentes1 = Interview.sum(:enchentes_1).to_f
    @total_lazer1 = Interview.sum(:lazer_1).to_f
    @total_mobilidade1 = Interview.sum(:mobilidade_1).to_f
    @total_saneamento1 = Interview.sum(:saneamento_1).to_f
    @total_saude1 = Interview.sum(:saude_1).to_f
    @total_seguranca1 = Interview.sum(:seguranca_1).to_f
    @total_trafico1 = Interview.sum(:trafico_1).to_f
    @total_transito1 = Interview.sum(:transito_1).to_f
    @total_transporte1 = Interview.sum(:transporte_1).to_f
    @total_nda1 = Interview.sum(:nda_1).to_f
    @total_outros1 = Interview.count(:conditions => ['outros_1 != ""']).to_f
    
    @total_final1 = @total_asfalto1 + @total_desemprego1 + @total_educacao1 + @total_enchentes1 + @total_lazer1 + @total_mobilidade1 +
                    @total_saneamento1 + @total_saude1 + @total_seguranca1 + @total_trafico1 + @total_transito1 + @total_transporte1 +
                    @total_nda1 + @total_outros1
    
    #PERCENTAGEM
    @perc_asfalto1 = ((@total_asfalto1 / @total_final1) * 100).round(2)
    @perc_desemprego1 = ((@total_desemprego1 / @total_final1) * 100).round(2)
    @perc_educacao1 = ((@total_educacao1 / @total_final1) * 100).round(2)
    @perc_enchentes1 = ((@total_enchentes1 / @total_final1) * 100).round(2)
    @perc_lazer1 = ((@total_lazer1 / @total_final1) * 100).round(2)
    @perc_mobilidade1 = ((@total_mobilidade1 / @total_final1) * 100).round(2)
    @perc_saneamento1 = ((@total_saneamento1 / @total_final1) * 100).round(2)
    @perc_saude1 = ((@total_saude1 / @total_final1) * 100).round(2)
    @perc_seguranca1 = ((@total_seguranca1 / @total_final1) * 100).round(2)
    @perc_trafico1 = ((@total_trafico1 / @total_final1) * 100).round(2)
    @perc_transito1 = ((@total_transito1 / @total_final1) * 100).round(2)
    @perc_transporte1 = ((@total_transporte1 / @total_final1) * 100).round(2)
    @perc_nda1 = ((@total_nda1 / @total_final1) * 100).round(2)
    @perc_outros1 = ((@total_outros1 / @total_final1) * 100).round(2)
    
    #QUESTOES 2
    @total_asfalto2 = Interview.sum(:asfalto_2).to_f
    @total_desemprego2 = Interview.sum(:desemprego_2).to_f
    @total_educacao2 = Interview.sum(:educacao_2).to_f
    @total_enchentes2 = Interview.sum(:enchentes_2).to_f
    @total_lazer2 = Interview.sum(:lazer_2).to_f
    @total_mobilidade2 = Interview.sum(:mobilidade_2).to_f
    @total_saneamento2 = Interview.sum(:saneamento_2).to_f
    @total_saude2 = Interview.sum(:saude_2).to_f
    @total_seguranca2 = Interview.sum(:seguranca_2).to_f
    @total_trafico2 = Interview.sum(:trafico_2).to_f
    @total_transito2 = Interview.sum(:transito_2).to_f
    @total_transporte2 = Interview.sum(:transporte_2).to_f
    @total_nda2 = Interview.sum(:nda_2).to_f
    @total_outros2 = Interview.count(:conditions => ['outros_2 != ""']).to_f
    
    @total_final2 = @total_asfalto2 + @total_desemprego2 + @total_educacao2 + @total_enchentes2 + @total_lazer2 + @total_mobilidade2 +
                    @total_saneamento2 + @total_saude2 + @total_seguranca2 + @total_trafico2 + @total_transito2 + @total_transporte2 +
                    @total_nda2 + @total_outros2
                    
    @perc_asfalto2 = (@total_final2 != 0) ? ((@total_asfalto2 / @total_final2) * 100).round(2) : 0
    @perc_desemprego2 = (@total_final2 != 0) ? ((@total_desemprego2 / @total_final2) * 100).round(2) : 0
    @perc_educacao2 = (@total_final2 != 0) ? ((@total_educacao2 / @total_final2) * 100).round(2) : 0
    @perc_enchentes2 = (@total_final2 != 0) ? ((@total_enchentes2 / @total_final2) * 100).round(2) : 0
    @perc_lazer2 = (@total_final2 != 0) ? ((@total_lazer2 / @total_final2) * 100).round(2) : 0
    @perc_mobilidade2 = (@total_final2 != 0) ? ((@total_mobilidade2 / @total_final2) * 100).round(2) : 0
    @perc_saneamento2 = (@total_final2 != 0) ? ((@total_saneamento2 / @total_final2) * 100).round(2) : 0
    @perc_saude2 = (@total_final2 != 0) ? ((@total_saude2 / @total_final2) * 100).round(2) : 0
    @perc_seguranca2 = (@total_final2 != 0) ? ((@total_seguranca2 / @total_final2) * 100).round(2) : 0
    @perc_trafico2 = (@total_final2 != 0) ? ((@total_trafico2 / @total_final2) * 100).round(2) : 0
    @perc_transito2 = (@total_final2 != 0) ? ((@total_transito2 / @total_final2) * 100).round(2) : 0
    @perc_transporte2 = (@total_final2 != 0) ? ((@total_transporte2 / @total_final2) * 100).round(2) : 0
    @perc_nda2 = (@total_final2 != 0) ? ((@total_nda2 / @total_final2) * 100).round(2) : 0
    @perc_outros2 = (@total_final2 != 0) ? ((@total_outros2 / @total_final2) * 100).round(2) : 0
    
    #QUESTOES 3
    @total_asfalto3 = Interview.sum(:asfalto_3).to_f
    @total_desemprego3 = Interview.sum(:desemprego_3).to_f
    @total_educacao3 = Interview.sum(:educacao_3).to_f
    @total_enchentes3 = Interview.sum(:enchentes_3).to_f
    @total_lazer3 = Interview.sum(:lazer_3).to_f
    @total_mobilidade3 = Interview.sum(:mobilidade_3).to_f
    @total_saneamento3 = Interview.sum(:saneamento_3).to_f
    @total_saude3 = Interview.sum(:saude_3).to_f
    @total_seguranca3 = Interview.sum(:seguranca_3).to_f
    @total_trafico3 = Interview.sum(:trafico_3).to_f
    @total_transito3 = Interview.sum(:transito_3).to_f
    @total_transporte3 = Interview.sum(:transporte_3).to_f
    @total_nda3 = Interview.sum(:nda_3).to_f
    @total_outros3 = Interview.count(:conditions => ['outros_3 != ""']).to_f
    
    @total_final3 = @total_asfalto3 + @total_desemprego3 + @total_educacao3 + @total_enchentes3 + @total_lazer3 + @total_mobilidade3 +
                    @total_saneamento3 + @total_saude3 + @total_seguranca3 + @total_trafico3 + @total_transito3 + @total_transporte3 +
                    @total_nda3 + @total_outros3
                    
    @perc_asfalto3 = (@total_final3 != 0) ? ((@total_asfalto3 / @total_final3) * 100).round(2) : 0
    @perc_desemprego3 = (@total_final3 != 0) ? ((@total_desemprego3 / @total_final3) * 100).round(2) : 0
    @perc_educacao3 = (@total_final3 != 0) ? ((@total_educacao3 / @total_final3) * 100).round(2) : 0
    @perc_enchentes3 = (@total_final3 != 0) ? ((@total_enchentes3 / @total_final3) * 100).round(2) : 0
    @perc_lazer3 = (@total_final3 != 0) ? ((@total_lazer3 / @total_final3) * 100).round(2) : 0
    @perc_mobilidade3 = (@total_final3 != 0) ? ((@total_mobilidade3 / @total_final3) * 100).round(2) : 0
    @perc_saneamento3 = (@total_final3 != 0) ? ((@total_saneamento3 / @total_final3) * 100).round(2) : 0
    @perc_saude3 = (@total_final3 != 0) ? ((@total_saude3 / @total_final3) * 100).round(2) : 0
    @perc_seguranca3 = (@total_final3 != 0) ? ((@total_seguranca3 / @total_final3) * 100).round(2) : 0
    @perc_trafico3 = (@total_final3 != 0) ? ((@total_trafico3 / @total_final3) * 100).round(2) : 0
    @perc_transito3 = (@total_final3 != 0) ? ((@total_transito3 / @total_final3) * 100).round(2) : 0
    @perc_transporte3 = (@total_final3 != 0) ? ((@total_transporte3 / @total_final3) * 100).round(2) : 0
    @perc_nda3 = (@total_final3 != 0) ? ((@total_nda3 / @total_final3) * 100).round(2) : 0
    @perc_outros3 = (@total_final3 != 0) ? ((@total_outros3 / @total_final3) * 100).round(2) : 0
    
    #QUESTOES 4
    @total_saulo = Interview.sum(:saulo_4).to_f
    @total_wanderley = Interview.sum(:wanderley_4).to_f
    @total_luiz = Interview.sum(:luiz_4).to_f
    @total_arthur = Interview.sum(:arthur_4).to_f
    @total_nulo = Interview.sum(:nulo_4).to_f
    @total_indeciso = Interview.sum(:indeciso_4).to_f
    @total_naorespondeu = Interview.sum(:naorespondeu_4).to_f

    
    @total_final4 = @total_saulo + @total_wanderley + @total_luiz + @total_arthur + @total_nulo + @total_indeciso + @total_naorespondeu
                    
    @perc_saulo = (@total_final4 != 0) ? ((@total_saulo / @total_final4) * 100).round(2) : 0
    @perc_wanderley = (@total_final4 != 0) ? ((@total_wanderley / @total_final4) * 100).round(2) : 0
    @perc_luiz = (@total_final4 != 0) ? ((@total_luiz / @total_final4) * 100).round(2) : 0
    @perc_arthur = (@total_final4 != 0) ? ((@total_arthur / @total_final4) * 100).round(2) : 0
    @perc_nulo = (@total_final4 != 0) ? ((@total_nulo / @total_final4) * 100).round(2) : 0
    @perc_indeciso = (@total_final4 != 0) ? ((@total_indeciso / @total_final4) * 100).round(2) : 0
    @perc_naorespondeu = (@total_final4 != 0) ? ((@total_naorespondeu / @total_final4) * 100).round(2) : 0

  end
end
