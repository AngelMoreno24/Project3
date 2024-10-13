<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryIt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">

            <h1 id="aspnetTitle">WordFilter and WordCount service

            </h1>

            <p> 
                <asp:Label ID="Label4" runat="server" Text="WordFilter service: This service will read the user input and filter out any stop words."></asp:Label>
            </p>

            <p>
                <asp:Label ID="Label9" runat="server" Text="URL: http://localhost:64679/Service1.svc"></asp:Label>
            </p>

            <p>
                <asp:Label ID="Label11" runat="server" Text="Method: WordFilter, parameter type: string, return type: string"></asp:Label>
            </p>

             <p>
                <asp:Label ID="Label1" runat="server" Text="Enter a String to filter out the stop word"></asp:Label>
                
            </p>
            
         
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="2000px"></asp:TextBox>
         

            <p>
                <asp:Button ID="Button1" runat="server" Text="Filter" OnClick="Button1_Click" />

            </p>

            <p>
                <asp:Label ID="Label2" runat="server" Text="Output:"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="..."></asp:Label>
            </p>

            <p>
                <asp:Label ID="Label5" runat="server" Text="WordCount service: This service will read in a file from the user input and output a count of every word"></asp:Label>

            </p>
            
            <p>
                <asp:Label ID="Label10" runat="server" Text="URL: http://localhost:50033/Service1.svc"></asp:Label>
            </p>

            <p>
                <asp:Label ID="Label12" runat="server" Text="Method: WordCount, parameter type: file, return type: string"></asp:Label>
            </p>

            <p>
                <asp:Label ID="Label6" runat="server" Text="Choose a file to use the service on:"></asp:Label>
            </p>

            <p>
                
                <asp:FileUpload ID="FileUpload1" runat="server" />

            </p>

            <p>
                <asp:Button ID="Button2" runat="server" Text="Count" OnClick="Button2_Click" />
            </p>

            <p>
                <asp:Label ID="Label7" runat="server" Text="Output:"></asp:Label>
            </p>

            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ReadOnly="True" Height="2000"></asp:TextBox>


        </section>

    </main>

</asp:Content>
