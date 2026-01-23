package net.bigpoint.cityrama.view.featuredEvent.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class FeaturedEventLayer extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _tabs:ArrayCollection;
      
      private var _tabsIsDirty:Boolean;
      
      public function FeaturedEventLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.styleName = "featuredEvents";
                  if(!_loc1_)
                  {
                     this.showBackButton = false;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0061:
                        this.width = 775;
                        if(!_loc1_)
                        {
                           addr006c:
                           this.height = 440;
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006c);
            }
            §§goto(addr0061);
         }
         addr0072:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr005a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr005a:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._tabs))
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0057:
                  this._tabs = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     this._tabsIsDirty = true;
                     if(_loc3_)
                     {
                        addr0073:
                        invalidateProperties();
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0073);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr0057);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._tabsIsDirty);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     addr0040:
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop();
                           if(!(_loc2_ && _loc2_))
                           {
                              addr006f:
                              if(Boolean(this._tabs))
                              {
                                 if(_loc1_)
                                 {
                                    addr0078:
                                    this._tabsIsDirty = false;
                                    if(_loc1_)
                                    {
                                       addr0082:
                                       tabData = this._tabs;
                                    }
                                    §§goto(addr008c);
                                 }
                                 §§goto(addr0082);
                              }
                           }
                           addr008c:
                           return;
                        }
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0040);
            }
            §§goto(addr0082);
         }
         §§goto(addr0078);
      }
   }
}

