<aura:application extends="force:slds">
    <!-- Data -->
    <!-- UUID -->
    <aura:attribute name="uuid" type="string" default="98454fa8-3738-4e2f-8752-c50a23e79d1a"/>
    <!-- Posts -->


    <!-- Header -->
    <c.blogHeader uuid="{!v.uuid}"/>

    <!-- Blog -->
    <div>
        <div class="slds-grid slds-wrap slds-grid--pull-padded">
          <div class="slds-p-horizontal--small slds-size--1-of-1 slds-medium-size--1-of-6 slds-large-size--4-of-12">
              <!-- Mini Feed -->
              <c.blogHeader uuid="{!v.uuid}"/>

          </div>
          <div class="slds-p-horizontal--small slds-size--1-of-1 slds-medium-size--5-of-6 slds-large-size--8-of-12">
              <!-- Main Feed -->
              <c.feedList uuid="{!v.uuid}"/>

          </div>
        </div>
    </div>


</aura:application>
