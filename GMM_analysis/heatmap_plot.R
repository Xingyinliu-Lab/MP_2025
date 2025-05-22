library(pheatmap)



data <- read.table("lac.txt",sep='\t',header=TRUE)
rownames(data)<-data$module
data<-data[,-1]
#label <-c(rep('Lac colonization',3))
label <-c('Lac colonization ASD','Non Lac colonization ASD','NC')
label<-data.frame(label)
rownames(label)<-colnames(data)
pdf('lac_c.pdf' ,width = 5, height = 6)
pheatmap(data, annotation_col = label,cluster_cols=FALSE,cluster_rows=FALSE,scale='row')
dev.off()


data <- read.table("dys.txt",sep='\t',header=TRUE)
rownames(data)<-data$module
data<-data[,-1]
label <-c('dyspepsia_avg','No dyspepsia_avg')
label<-data.frame(label)
rownames(label)<-colnames(data)
pdf('dyspepsia.pdf' ,width = 5, height = 6)
pheatmap(data, annotation_col = label,cluster_cols=FALSE,cluster_rows=FALSE,scale='row')
dev.off()


data <- read.table("cons.txt",sep='\t',header=TRUE)
rownames(data)<-data$module
data<-data[,-1]
label <-c('constipation_avg','No constipation_avg')
label<-data.frame(label)
rownames(label)<-colnames(data)
pdf('constipation.pdf' ,width = 5, height = 6)
pheatmap(data, annotation_col = label,cluster_cols=FALSE,cluster_rows=FALSE,scale='row')
dev.off()

