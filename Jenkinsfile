 pipeline {

     agent any
		
		stages {
			stage('Clone repo and setup') {
				steps {
                git branch: 'main', credentialsId: 'CI_bitbucket_with_password', url: 'https://github.com/AhmedShanwany/Docker_Jmeter.git'
				script{
                    currentBuild.displayName = env.Jmeter_Script
                }
			}
        }
		stage('parallel') {
			parallel{
				stage ('parallel execution') {
					stages ('i might have multiple stages'){
						stage ('stage 1'){
						steps{
							script {
								for (int i=0; i<=10;i++) {
								echo "$i"
								sleep 3
							}
						}
				}
				}
			}
		}
		
		
		stage('Regular execution'){
		stages('Docker normal'){
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t jmeter-docker ./'
				
                     }
            }
        }
		
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\\QIQ\\courses\\Run_From_CMD:/data jmeter-docker %Jmeter_Script%'
                
				}
			}
        }
		}
		}
		}
		}
		}
		
		post {
        always {
            bat 'docker system prune --all -f'
			bat ' docker images'
			cleanWs()
        }
    }
	}