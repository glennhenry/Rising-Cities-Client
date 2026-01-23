package net.bigpoint.cityrama.view.common.components
{
   import mx.collections.IList;
   import mx.events.CollectionEvent;
   import spark.components.DataGroup;
   
   public class NonScrollingDataGroup extends DataGroup
   {
      
      private var _dataProviderChanged:Boolean;
      
      private var _lastScrollPositionH:Number = 0;
      
      private var _lastScrollPositionV:Number = 0;
      
      public function NonScrollingDataGroup()
      {
         super();
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         if(dataProvider != null && param1 != dataProvider)
         {
            dataProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.onDataProviderChanged);
         }
         super.dataProvider = param1;
         if(param1 != null)
         {
            param1.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.onDataProviderChanged);
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Number = this._lastScrollPositionH;
         var _loc2_:Number = this._lastScrollPositionV;
         super.commitProperties();
         if(this._dataProviderChanged)
         {
            this.verticalScrollPosition = _loc2_;
            this.horizontalScrollPosition = _loc1_;
         }
      }
      
      private function onDataProviderChanged(param1:CollectionEvent) : void
      {
         this._dataProviderChanged = true;
         invalidateProperties();
      }
      
      override public function set verticalScrollPosition(param1:Number) : void
      {
         super.verticalScrollPosition = param1;
         this._lastScrollPositionV = param1;
      }
      
      override public function set horizontalScrollPosition(param1:Number) : void
      {
         super.horizontalScrollPosition = param1;
         this._lastScrollPositionH = param1;
      }
   }
}

