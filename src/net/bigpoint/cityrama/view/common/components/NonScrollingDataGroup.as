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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(dataProvider == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && Boolean(param1)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr005b:
                        §§pop();
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr0074:
                           §§push(param1 == dataProvider);
                           if(!_loc2_)
                           {
                              addr0073:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 dataProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.onDataProviderChanged);
                                 if(_loc3_)
                                 {
                                    addr00a7:
                                    super.dataProvider = param1;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00b1);
                                    }
                                    §§goto(addr00bc);
                                 }
                                 addr00b1:
                                 if(param1 != null)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00bc:
                                       param1.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.onDataProviderChanged);
                                    }
                                 }
                                 §§goto(addr00cc);
                              }
                              addr00cc:
                              return;
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0074);
               }
            }
            §§goto(addr005b);
         }
         §§goto(addr00bc);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this._lastScrollPositionH);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this._lastScrollPositionV);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc3_ && _loc2_))
            {
               if(this._dataProviderChanged)
               {
                  if(!_loc3_)
                  {
                     addr007a:
                     this.verticalScrollPosition = _loc2_;
                     if(!_loc3_)
                     {
                        this.horizontalScrollPosition = _loc1_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr007a);
      }
      
      private function onDataProviderChanged(param1:CollectionEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._dataProviderChanged = true;
            if(_loc3_)
            {
               addr0024:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0024);
      }
      
      override public function set verticalScrollPosition(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.verticalScrollPosition = param1;
            if(_loc3_)
            {
               addr0023:
               this._lastScrollPositionV = param1;
            }
            return;
         }
         §§goto(addr0023);
      }
      
      override public function set horizontalScrollPosition(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.horizontalScrollPosition = param1;
            if(!_loc2_)
            {
               this._lastScrollPositionH = param1;
            }
         }
      }
   }
}

