package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.TitleWindow;
   
   public class MiniLayerWindow extends TitleWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      public var sparkle:BriskImageDynaLib;
      
      public var attentionSign:BriskImageDynaLib;
      
      private var _showAttentionSign:Boolean = false;
      
      private var _showSparkle:Boolean = false;
      
      public function MiniLayerWindow()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      protected static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         return LocaUtils.getString(param1,param2,param3);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.partAdded(param1,param2);
            if(_loc4_ || Boolean(this))
            {
               if(param2 == this.sparkle)
               {
                  if(_loc4_)
                  {
                     §§push(this.sparkle);
                     if(!_loc3_)
                     {
                        §§push(this._showSparkle);
                        if(!_loc3_)
                        {
                           §§pop().visible = §§pop();
                           if(_loc4_)
                           {
                              addr0061:
                              this.sparkle.includeInLayout = this._showSparkle;
                              addr005d:
                              if(!_loc3_)
                              {
                                 addr0068:
                                 if(param2 == this.attentionSign)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.attentionSign);
                                       if(!_loc3_)
                                       {
                                          §§push(this._showAttentionSign);
                                          if(!_loc3_)
                                          {
                                             §§pop().visible = §§pop();
                                             if(_loc4_)
                                             {
                                                addr00a4:
                                                this.attentionSign.includeInLayout = this._showAttentionSign;
                                                addr00a0:
                                                addr009c:
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00b3:
                                                   if(param2 == closeButton)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr00c1:
                                                         this.addCloseButtonListeners();
                                                         if(_loc4_)
                                                         {
                                                            addr00cd:
                                                            §§push(param2 is BriskMCDynaLib);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        addr0118:
                                                                        addr011c:
                                                                        if(param2 is BriskImageDynaLib)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0125:
                                                                              (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0136);
                                                               }
                                                               §§goto(addr0118);
                                                            }
                                                            §§goto(addr011c);
                                                         }
                                                         §§goto(addr0125);
                                                      }
                                                      §§goto(addr0118);
                                                   }
                                                   §§goto(addr00cd);
                                                }
                                                §§goto(addr00c1);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr00a4);
                                       }
                                       §§goto(addr00a0);
                                    }
                                    addr0136:
                                    return;
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr0068);
                        }
                        §§goto(addr0061);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0068);
            }
            §§goto(addr009c);
         }
         §§goto(addr00cd);
      }
      
      public function get showAttentionSign() : Boolean
      {
         return this._showAttentionSign;
      }
      
      public function set showAttentionSign(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._showAttentionSign = param1;
            if(_loc2_ || Boolean(this))
            {
               addr002f:
               §§push(this.attentionSign);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.attentionSign);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§pop().visible = §§pop();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr0094);
                              }
                              §§goto(addr009b);
                           }
                           addr0094:
                           this.attentionSign.includeInLayout = param1;
                           §§goto(addr0093);
                        }
                        addr0093:
                        §§goto(addr008f);
                     }
                     addr008f:
                     if(!_loc3_)
                     {
                        addr009b:
                        invalidateDisplayList();
                     }
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0093);
            }
            addr00a2:
            return;
         }
         §§goto(addr002f);
      }
      
      public function get showSparkle() : Boolean
      {
         return this._showSparkle;
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._showSparkle = param1;
            if(_loc3_ || _loc2_)
            {
               §§push(this.sparkle);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(this.sparkle);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§pop().visible = §§pop();
                              if(_loc3_)
                              {
                                 addr0076:
                                 this.sparkle.includeInLayout = param1;
                                 addr0075:
                                 addr0071:
                                 if(!(_loc2_ && param1))
                                 {
                                    addr0085:
                                    invalidateDisplayList();
                                 }
                              }
                              §§goto(addr008c);
                           }
                           §§goto(addr0076);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0071);
                  }
                  addr008c:
                  return;
               }
               §§goto(addr0075);
            }
         }
         §§goto(addr0085);
      }
      
      private function handleComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
            if(!_loc2_)
            {
               invalidateSize();
            }
         }
      }
      
      override public function set title(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(super.title != param1)
            {
               if(_loc2_)
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
      
      private function addCloseButtonListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            closeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.exit"));
            if(!_loc2_)
            {
               addr0044:
               closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
            }
            return;
         }
         §§goto(addr0044);
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partRemoved(param1,param2);
            if(!(_loc3_ && Boolean(this)))
            {
               if(param2 == closeButton)
               {
                  if(!_loc3_)
                  {
                     addr0046:
                     this.removeCloseButtonListeners();
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      private function removeCloseButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
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
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != super.styleName)
            {
               if(!_loc3_)
               {
                  super.styleName = param1;
                  if(_loc2_)
                  {
                     addr0042:
                     invalidateDisplayList();
                  }
                  §§goto(addr0049);
               }
               §§goto(addr0042);
            }
            addr0049:
            return;
         }
         §§goto(addr0042);
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(Event.CLOSE,true));
         }
      }
   }
}

