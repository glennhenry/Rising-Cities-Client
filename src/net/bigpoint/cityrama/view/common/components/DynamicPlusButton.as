package net.bigpoint.cityrama.view.common.components
{
   import mx.events.PropertyChangeEvent;
   
   public class DynamicPlusButton extends ConfirmablePlusButton
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || DynamicPlusButton)
      {
         _skinParts = {
            "sparkle":false,
            "plusIcon":false,
            "labelDisplay":false,
            "iconDisplay":false,
            "iconAsset":true
         };
      }
      
      public var iconAsset:BriskImageDynaLib;
      
      public var sparkle:BriskImageDynaLib;
      
      private var _iconLibName:String;
      
      private var _iconImageName:String;
      
      private var _showSparkle:Boolean = false;
      
      private var _inactive:Boolean;
      
      public function DynamicPlusButton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImageName() : String
      {
         return this._iconImageName;
      }
      
      private function set _1757393395iconImageName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(param1 != this._iconImageName)
            {
               if(_loc2_ || _loc2_)
               {
                  this._iconImageName = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr005d:
                     §§push(this.iconAsset);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr0073:
                              this.iconAsset.dynaBmpSourceName = this._iconImageName;
                              addr006f:
                           }
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr005d);
            }
            addr0079:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconLibName() : String
      {
         return this._iconLibName;
      }
      
      private function set _474884105iconLibName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 != this._iconLibName)
            {
               if(_loc3_)
               {
                  addr003b:
                  this._iconLibName = param1;
                  if(_loc3_)
                  {
                     addr0050:
                     §§push(this.iconAsset);
                     if(_loc3_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0076:
                              this.iconAsset.dynaLibName = this._iconLibName;
                              addr0072:
                           }
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0050);
            }
            addr007c:
            return;
         }
         §§goto(addr003b);
      }
      
      public function get showSparkle() : Boolean
      {
         return this._showSparkle;
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._showSparkle = param1;
            if(!_loc3_)
            {
               §§push(this.sparkle);
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.sparkle);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              §§pop().visible = §§pop();
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0088);
                              }
                              §§goto(addr0097);
                           }
                           addr0088:
                           this.sparkle.includeInLayout = param1;
                           §§goto(addr0087);
                        }
                        addr0087:
                        addr0083:
                        if(_loc2_ || _loc2_)
                        {
                           addr0097:
                           invalidateDisplayList();
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0097);
                  }
                  addr009e:
                  return;
               }
               §§goto(addr0087);
            }
         }
         §§goto(addr0083);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super.partAdded(param1,param2);
            if(!(_loc4_ && Boolean(param1)))
            {
               if(param2 == plusIcon)
               {
                  if(_loc3_)
                  {
                     plusIcon.visible = _showPlus;
                     if(!_loc4_)
                     {
                        plusIcon.includeInLayout = _showPlus;
                        if(!(_loc3_ || Boolean(param1)))
                        {
                           addr0107:
                           this.sparkle.includeInLayout = this._showSparkle;
                           addr00ff:
                           addr0103:
                        }
                        §§goto(addr0109);
                     }
                     else
                     {
                        addr00dc:
                        §§push(this.sparkle);
                        if(_loc3_)
                        {
                           §§push(this._showSparkle);
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§pop().visible = §§pop();
                              if(!_loc4_)
                              {
                                 §§goto(addr00ff);
                              }
                              §§goto(addr0109);
                           }
                           §§goto(addr0107);
                        }
                     }
                     §§goto(addr0103);
                  }
                  §§goto(addr00ff);
               }
               else if(param2 == this.iconAsset)
               {
                  if(_loc3_)
                  {
                     §§push(this.iconAsset);
                     if(!_loc4_)
                     {
                        §§push(this._iconImageName);
                        if(!_loc4_)
                        {
                           §§pop().dynaBmpSourceName = §§pop();
                           if(!_loc4_)
                           {
                              addr00a7:
                              this.iconAsset.dynaLibName = this._iconLibName;
                              addr00a3:
                              addr009f:
                              if(_loc4_ && Boolean(this))
                              {
                              }
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00a3);
                  }
               }
               else if(param2 == this.sparkle)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr00dc);
                  }
                  §§goto(addr00ff);
               }
               addr0109:
               return;
            }
         }
         §§goto(addr009f);
      }
      
      public function set inactive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._inactive = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               if(plusIcon)
               {
                  if(_loc1_ || _loc1_)
                  {
                     plusIcon.visible = _showPlus;
                     if(!_loc2_)
                     {
                        plusIcon.includeInLayout = _showPlus;
                        if(_loc2_ && _loc2_)
                        {
                           addr00fe:
                           this.sparkle.includeInLayout = this._showSparkle;
                           addr00f6:
                           addr00fa:
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.iconAsset);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           addr007d:
                           §§push(this.iconAsset);
                           if(!_loc2_)
                           {
                              §§push(this._iconImageName);
                              if(!_loc2_)
                              {
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr00a6:
                                    this.iconAsset.dynaLibName = this._iconLibName;
                                    addr00a2:
                                    addr009e:
                                    if(_loc2_)
                                    {
                                       addr00d5:
                                       §§push(this.sparkle);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(this._showSparkle);
                                          if(!_loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             if(_loc1_)
                                             {
                                                §§goto(addr00f6);
                                             }
                                             §§goto(addr0100);
                                          }
                                          §§goto(addr00fe);
                                       }
                                       §§goto(addr00fa);
                                    }
                                 }
                                 §§goto(addr0100);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr009e);
                     }
                     else
                     {
                        §§push(this.sparkle);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr0100);
                        }
                     }
                     §§goto(addr00fa);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0100);
            }
            §§goto(addr007d);
         }
         addr0100:
      }
      
      public function get inactive() : Boolean
      {
         return this._inactive;
      }
      
      public function set iconLibName(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this.iconLibName;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._474884105iconLibName = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLibName",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
      
      public function set iconImageName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this.iconImageName;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1757393395iconImageName = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImageName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
   }
}

