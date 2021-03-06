<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<c:if test="${TipoDeAcessorioForm.id == null || TipoDeAcessorioForm.id < 1}">
	<h2>Novo Tipo de Acessorio</h2>
</c:if>
<c:if test="${TipoDeAcessorioForm.id > 0}">
	<h2>Alterar Tipo de Acessorio</h2>
</c:if>

<html:errors property="Erros" suffix="erro.erro2" prefix="erro.erro" />
<html:form action="/TipoDeAcessorio" focus="nome" styleClass="formulario">
	<html:hidden property="id" />
    <fieldset>
        <legend><bean:message key="form.introducao"/></legend>
        <p>
            <label for="fnome"><span>Nome:</span></label>
            <html:text styleId="fnome" property="nome" maxlength="100" size="30"></html:text>
        </p>
        <p class="botoes">
            <button type="submit" name="acao" value="salvar" class="primeiro-botao">Salvar</button>
            <button type="submit" name="acao" value="cancelar">Cancelar</button>
        </p>
    </fieldset>
</html:form>