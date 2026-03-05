*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search For Products
    Go To                                   http://www.amazon.com/
    Wait Until Page Contains Element        id=twotabsearchtextbox    15s
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click element                           id=nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"


Select Product from Search Results
    Click Element                           css=div[data-component-type="s-search-result"]
    Wait Until Page Contains                Buy Now


Add Product To Cart
    Click Button                            id=add-to-cart-button
    Wait Until Page Contains                Added to Cart


Begin Checkout
    Click element                           proceedToRetailCheckout
    Page Should Contain Element             claim-collection-container
    Element Text Should Be                  css=.a-size-medium-plus.a-spacing-small   Sign in or create account


