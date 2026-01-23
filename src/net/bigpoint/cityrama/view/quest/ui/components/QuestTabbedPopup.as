package net.bigpoint.cityrama.view.quest.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class QuestTabbedPopup extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
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
      
      private var _questTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function QuestTabbedPopup()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  addr0041:
                  this.styleName = "tabbedQuest";
                  if(!_loc2_)
                  {
                     this.showBackButton = false;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr007c);
                  }
                  addr0069:
                  this.width = 775;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007c:
                     this.height = 440;
                  }
                  §§goto(addr0082);
               }
               addr0082:
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr007c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr003a);
            }
            §§goto(addr0050);
         }
         addr003a:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || _loc2_)
            {
               addr0050:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
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
            if(!_loc2_)
            {
               §§push(Boolean(this._questTabData));
               if(!_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr004d:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr0066);
                  }
                  addr0067:
                  §§push(this._tabsDirty);
                  if(_loc1_)
                  {
                     addr0066:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0078:
                        this._tabsDirty = false;
                        if(!_loc2_)
                        {
                           addr0082:
                           tabData = this._questTabData;
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0082);
                  }
                  addr008c:
                  return;
               }
               §§goto(addr004d);
            }
         }
         §§goto(addr0078);
      }
      
      public function set questTabData(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._questTabData))
            {
               if(!_loc2_)
               {
                  this._questTabData = param1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004f:
                     this._tabsDirty = true;
                     if(_loc3_)
                     {
                        addr0059:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr004f);
            }
            addr005e:
            return;
         }
         §§goto(addr0059);
      }
   }
}

