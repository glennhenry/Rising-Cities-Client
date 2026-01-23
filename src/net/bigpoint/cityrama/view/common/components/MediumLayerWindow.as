package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.TitleWindow;
   
   public class MediumLayerWindow extends TitleWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkles":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "titleDisplay":false,
            "characterImage":false
         };
      }
      
      private var _showSparkles:Boolean;
      
      private var _characterImageLibName:String = "";
      
      private var _characterImageBmpName:String = "";
      
      public var characterImage:BriskImageDynaLib;
      
      public var sparkles:Group;
      
      public function MediumLayerWindow()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super.partAdded(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               if(param2 == closeButton)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     this.addCloseButtonListeners();
                     if(!(_loc4_ || Boolean(param2)))
                     {
                        addr009e:
                        §§push(this._characterImageLibName);
                        if(!(_loc3_ && Boolean(param2)))
                        {
                           §§push("");
                           if(_loc4_ || Boolean(this))
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    addr00dd:
                                    (param2 as BriskImageDynaLib).dynaLibName = this._characterImageLibName;
                                    if(_loc4_)
                                    {
                                       addr00ed:
                                       addr00f3:
                                       addr00f1:
                                       if(this._characterImageBmpName != "")
                                       {
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             (param2 as BriskImageDynaLib).dynaBmpSourceName = this._characterImageBmpName;
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr011b:
                                                §§push(param2 is BriskMCDynaLib);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                                         addr0136:
                                                         if(_loc4_)
                                                         {
                                                            addr0158:
                                                            addr015c:
                                                            if(param2 is BriskImageDynaLib)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr016e:
                                                                  (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr017f);
                                                   }
                                                   §§goto(addr0158);
                                                }
                                                §§goto(addr015c);
                                             }
                                             §§goto(addr0136);
                                          }
                                          §§goto(addr016e);
                                       }
                                       §§goto(addr011b);
                                    }
                                    §§goto(addr0136);
                                 }
                                 §§goto(addr0158);
                              }
                              §§goto(addr00ed);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr00f1);
                     }
                  }
               }
               else if(param2 == this.sparkles)
               {
                  if(!_loc3_)
                  {
                     param2.visible = this._showSparkles;
                     if(_loc4_)
                     {
                        §§goto(addr011b);
                     }
                     §§goto(addr016e);
                  }
                  else
                  {
                     §§goto(addr009e);
                  }
               }
               else if(param2 == this.characterImage)
               {
                  if(_loc4_ || Boolean(param2))
                  {
                     §§goto(addr009e);
                  }
                  §§goto(addr017f);
               }
               §§goto(addr011b);
            }
            addr017f:
            return;
         }
         §§goto(addr00dd);
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partRemoved(param1,param2);
            if(!(_loc3_ && Boolean(param2)))
            {
               if(param2 == closeButton)
               {
                  if(_loc4_ || _loc3_)
                  {
                     this.removeCloseButtonListeners();
                  }
               }
            }
         }
      }
      
      private function handleComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
            if(!_loc3_)
            {
               invalidateSize();
            }
         }
      }
      
      private function addCloseButtonListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
            if(!_loc2_)
            {
               addr002a:
               closeButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.close");
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function removeCloseButtonListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
         }
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new Event(Event.CLOSE,true));
         }
      }
      
      override public function set title(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(super.title != param1)
            {
               if(_loc2_ || _loc3_)
               {
                  super.title = param1;
                  if(!_loc3_)
                  {
                     invalidateProperties();
                  }
               }
            }
         }
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1 != super.styleName)
            {
               if(_loc2_)
               {
                  super.styleName = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0048:
                     invalidateDisplayList();
                  }
                  §§goto(addr004f);
               }
               §§goto(addr0048);
            }
            addr004f:
            return;
         }
         §§goto(addr0048);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.commitProperties();
         }
      }
      
      public function set showSparkles(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._showSparkles = param1;
            if(_loc2_ || param1)
            {
               if(this.sparkles)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0054:
                     this.sparkles.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr0054);
      }
      
      public function set characterImageBmpName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._characterImageBmpName = param1;
         }
      }
      
      public function set characterImageLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._characterImageLibName = param1;
         }
      }
   }
}

