

// +-------------------------------------------------------------------+
// | Disciplina  | CAP – 393 – 3 – Model Checking Probabilístico       | 
// |             |                                                     |                                      					 						
// | Aluno       | Juliana M. Balera         			       |
// |             |                                                     | 
// | Professor   | Valdivino Alexandre de Santiago Jr.                 |
// |             |                                                     |                                                                  
// | Título      | Ánalise dos impactos e consequências da seca nos    |                                                                  
// |             | biomas cerrado e caatinga através do uso de         |
// |             | Verificação de Modelos Probabilísticos              |                                                                                                                             
// +-------------------------------------------------------------------+


dtmc

const double precipitacao_acumulada;


module influencia_preciptacao

	crescimento_caramujos : [0..1];
	estado_classe_atual_r1 : [0..5];
	estado_classe_anterior_r1 : [0..5];
	densidade_r1 : [0..10]; 	
	pixel : [0..255];

	
	[] (estado_classe_atual_r1=0 & precipitacao_acumulada < 0.33) -> 0.059 :  (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.211 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.596 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.074 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.033 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.027 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=0 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.211 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.596 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.027 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.059 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.074 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.033 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=0 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.596 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.211 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.059 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.027 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.033 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.074 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=0 & precipitacao_acumulada > 0.66 & precipitacao_acumulada <= 1 -> 0.596 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.211 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.027 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.059 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.074 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.033 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=0 & precipitacao_acumulada < 1 & precipitacao_acumulada >= 0.66 -> 0.074 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.033 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.027 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.059 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.211 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.596 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	
	[] estado_classe_atual_r1=1 & precipitacao_acumulada < 0.33 -> 0.175 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.434 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.190 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.115 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.020 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.066 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1); 
	[] estado_classe_atual_r1=1 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.434 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.190 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.066 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.175 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.115 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.020 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1); 
	[] estado_classe_atual_r1=1 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.190 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.434 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.175 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.066 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.020 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.115 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1); 
	[] estado_classe_atual_r1=1 & precipitacao_acumulada > 0.66 -> 0.190 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.434 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.066 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.175 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.115 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.020 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1); 
	[] estado_classe_atual_r1=1 & precipitacao_acumulada < 1 & precipitacao_acumulada >= 0.66 -> 0.115 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.020 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.066 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.175 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.434 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.190 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1); 
	
	[] estado_classe_atual_r1=2 & precipitacao_acumulada < 0.33 -> 0.324 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.194 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.108 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.158 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.144 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.072 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=2 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.194 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.108 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.144 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.324 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.158 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.072 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=2 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.108 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.194 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.324 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.144 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.072 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.158 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=2 & precipitacao_acumulada > 0.66 -> 0.108 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.194 :  (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.144 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.324 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.158 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.072 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);   
	[] estado_classe_atual_r1=2 & precipitacao_acumulada <= 1 & precipitacao_acumulada >= 0.66 -> 0.158 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.072 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.144 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.324 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.194 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.108 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  

	[] estado_classe_atual_r1=3 & precipitacao_acumulada < 0.33 -> 0.163 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.067: (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.151 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.247 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.351 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=3 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.067 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.351 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.163 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.151 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.247 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=3 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.021 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.067 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.163 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.351 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.247 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.151 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=3 & precipitacao_acumulada > 0.66 -> 0.021 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.067 :  (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.351 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.163 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.151 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.247 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=3 & precipitacao_acumulada <= 1 & precipitacao_acumulada >= 0.66 -> 0.151 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.247 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.351 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.163 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.067 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	
	[] estado_classe_atual_r1=4 & precipitacao_acumulada < 0.33 -> 0.061 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.025 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.016 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.226 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.531 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.141 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=4 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.025 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.016 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.141 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.061 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.226 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.531 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=4 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.016 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.025 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.061 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.141 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.531 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.226 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=4 & precipitacao_acumulada > 0.66 -> 0.016 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.025 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.141 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.061 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.226 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.531 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);    
	[] estado_classe_atual_r1=4 & precipitacao_acumulada <= 1 & precipitacao_acumulada >= 0.66 -> 0.226 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.531 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.141 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.061 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.025 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.016 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
		
	[] estado_classe_atual_r1=5 & precipitacao_acumulada < 0.33 -> 0.032 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.036 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.018 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.794 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.099 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=5 & precipitacao_acumulada > 0.33 & precipitacao_acumulada < 0.66 -> 0.036 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.018 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.032 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.794 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.099 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=5 & precipitacao_acumulada < 0.66 & precipitacao_acumulada >= 0.33 -> 0.018 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.036 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.032 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.099 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.794 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=5 & precipitacao_acumulada > 0.66 -> 0.018 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.036 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.032 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.794 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.099 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
	[] estado_classe_atual_r1=5 & precipitacao_acumulada <= 1 & precipitacao_acumulada >= 0.66 -> 0.794 : (estado_classe_atual_r1'=0) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.099 : (estado_classe_atual_r1'=1) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.021 : (estado_classe_atual_r1'=2) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.032 : (estado_classe_atual_r1'=3) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.036 : (estado_classe_atual_r1'=4) & (estado_classe_anterior_r1'=estado_classe_atual_r1) + 0.018 : (estado_classe_atual_r1'=5) & (estado_classe_anterior_r1'=estado_classe_atual_r1);  
			
endmodule	


module identificacao_anomalias

	estado_classe_atual_r2 : [0..5];
	estado_classe_anterior_r2 : [0..5];
	
	densidade_r2 : [0..10];
	
	[] estado_classe_atual_r2=0 -> 0.596 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.211 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.059 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.027 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.033 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.074 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r2);  
	[] estado_classe_atual_r2=1 -> 0.190 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.434 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.175 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.066 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.020 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.115 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r2); 
	[] estado_classe_atual_r2=2 -> 0.108 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.194 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.324 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.144 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.072 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.158 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r2);  
	[] estado_classe_atual_r2=3 -> 0.021 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.067 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.163 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.351 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.247 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.151 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r2);  
	[] estado_classe_atual_r2=4 -> 0.015 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.025 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.061 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.141 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.531 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.227 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r2);  
	[] estado_classe_atual_r2=5 -> 0.018 : (estado_classe_atual_r2'=0) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.036 : (estado_classe_atual_r2'=1) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.032 : (estado_classe_atual_r2'=2) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.021 : (estado_classe_atual_r2'=3) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.099 : (estado_classe_atual_r2'=4) & (estado_classe_anterior_r2'=estado_classe_atual_r2) + 0.794 : (estado_classe_atual_r2'=5) & (estado_classe_anterior_r2'=estado_classe_atual_r1);  
			
endmodule	


rewards "pixel_final" 
	
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 0 : 0.596 * pixel;
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 1 : 0.211 * pixel;
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 2 : 0.059 * pixel;
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 3 : 0.027 * pixel;
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 4 : 0.033 * pixel;
	estado_classe_anterior_r1 = 0 & estado_classe_atual_r1 = 5 : 0.074 * pixel;

	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 0 : 0.190 * pixel;
	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 1 : 0.434 * pixel;
	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 2 : 0.175 * pixel;
	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 3 : 0.066 * pixel;
	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 4 : 0.020 * pixel;
	estado_classe_anterior_r1 = 1 & estado_classe_atual_r1 = 5 : 0.115 * pixel;
		
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 0 : 0.108 * pixel;
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 1 : 0.194 * pixel;
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 2 : 0.324 * pixel;
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 3 : 0.144 * pixel;
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 4 : 0.072 * pixel;
	estado_classe_anterior_r1 = 2 & estado_classe_atual_r1 = 5 : 0.158 * pixel;
		
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 0 : 0.021 * pixel;
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 1 : 0.067 * pixel;
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 2 : 0.163 * pixel;
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 3 : 0.351 * pixel;
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 4 : 0.247 * pixel;
	estado_classe_anterior_r1 = 3 & estado_classe_atual_r1 = 5 : 0.151 * pixel;
		
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 0 : 0.016 * pixel;
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 1 : 0.025 * pixel;
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 2 : 0.061 * pixel;
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 3 : 0.141 * pixel;
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 4 : 0.531 * pixel;
	estado_classe_anterior_r1 = 4 & estado_classe_atual_r1 = 5 : 0.227 * pixel;
	
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 0 : 0.018 * pixel;
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 1 : 0.036 * pixel;
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 2 : 0.032 * pixel;
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 3 : 0.021 * pixel;
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 4 : 0.099 * pixel;
	estado_classe_anterior_r1 = 5 & estado_classe_atual_r1 = 5 : 0.793 * pixel;
		
endrewards	


rewards "densidade_vegetacao" 
	
	estado_classe_atual_r1 < estado_classe_anterior_r1 : 0.5*densidade_r1;
	estado_classe_atual_r1 > estado_classe_anterior_r1 : 1*densidade_r1;	
endrewards



rewards "quantidade_caramujos" 
	
	estado_classe_atual_r1=0 | estado_classe_atual_r1=1 : 1 + crescimento_caramujos;
	estado_classe_atual_r1=2 | estado_classe_atual_r1=3 : 5 + crescimento_caramujos;
	estado_classe_atual_r1=4 | estado_classe_atual_r1=5 : 10 + crescimento_caramujos;
 	estado_classe_atual_r1=6 : 20 + crescimento_caramujos;

endrewards

rewards "passos_tempo" 
	true : 1.0;	
endrewards

init 
	estado_classe_atual_r1=0 & pixel=0 & estado_classe_anterior_r1=0 & estado_classe_atual_r2=1 & estado_classe_anterior_r2=0 & densidade_r1=1 & densidade_r2=1 & crescimento_caramujos=0	
endinit 
