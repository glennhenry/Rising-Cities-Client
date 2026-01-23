package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class CityTreasuryLayer extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _treasuryTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function CityTreasuryLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.styleName = "cityTreasury";
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0068);
               }
               addr0056:
               this.showBackButton = false;
               if(!(_loc1_ && _loc1_))
               {
                  this.width = 775;
                  addr0068:
                  if(_loc2_ || Boolean(this))
                  {
                     this.height = 440;
                     if(_loc2_ || _loc1_)
                     {
                        addr0098:
                        this.addEventListener("addedToStage",this.___CityTreasuryLayer_PaperPopupWindow1_addedToStage);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0098);
               }
               addr00a4:
               return;
            }
            §§goto(addr0098);
         }
         §§goto(addr0068);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0043:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            TweenMax.to(this,1,{"glowFilter":{
               "color":14140033,
               "alpha":1,
               "blurX":32,
               "blurY":32,
               "strength":1.8
            }});
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(!(_loc1_ && _loc2_))
            {
               addr0030:
               §§push(Boolean(this._treasuryTabData));
               if(_loc2_ || Boolean(this))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           addr0078:
                           §§push(this._tabsDirty);
                           if(!(_loc1_ && _loc1_))
                           {
                              addr0077:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 addr0081:
                                 this._tabsDirty = false;
                                 if(_loc2_ || _loc1_)
                                 {
                                    tabData = this._treasuryTabData;
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0077);
            }
            §§goto(addr0081);
         }
         §§goto(addr0030);
      }
      
      public function set treasuryTabData(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._treasuryTabData))
            {
               if(_loc2_ || _loc2_)
               {
                  this._treasuryTabData = param1;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0071);
               }
               addr005f:
               this._tabsDirty = true;
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0071:
                  invalidateProperties();
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr005f);
      }
      
      public function ___CityTreasuryLayer_PaperPopupWindow1_addedToStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.addedToStageHandler(param1);
         }
      }
   }
}

