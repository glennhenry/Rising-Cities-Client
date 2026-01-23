package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class ResidentialPopup extends PaperPopupWindow
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
      
      private var _residentialTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function ResidentialPopup()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  §§goto(addr0041);
               }
            }
            §§goto(addr005e);
         }
         addr0041:
         this.styleName = "residential";
         if(_loc1_ || _loc1_)
         {
            addr005e:
            this.showBackButton = false;
            if(!(_loc2_ && Boolean(this)))
            {
               this.width = 775;
               if(!_loc2_)
               {
                  addr007b:
                  this.height = 440;
               }
               §§goto(addr0081);
            }
            §§goto(addr007b);
         }
         addr0081:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr004f);
            }
            addr0043:
            return;
         }
         addr004f:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               addr002f:
               §§push(Boolean(this._residentialTabData));
               if(_loc1_ || _loc1_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0080);
                     }
                  }
                  addr0077:
                  §§goto(addr006d);
               }
               §§goto(addr0076);
            }
            addr006d:
            §§push(this._tabsDirty);
            if(!_loc2_)
            {
               addr0076:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  addr0080:
                  this._tabsDirty = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     tabData = this._residentialTabData;
                  }
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      public function set residentialTabData(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._residentialTabData))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._residentialTabData = param1;
                  if(_loc2_)
                  {
                     addr004c:
                     this._tabsDirty = true;
                     if(_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr005b);
               }
               §§goto(addr004c);
            }
            addr005b:
            return;
         }
         §§goto(addr004c);
      }
   }
}

