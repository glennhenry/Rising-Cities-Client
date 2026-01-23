package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.VGroup;
   
   public class PostitHeaderComponent extends VGroup
   {
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _2094719709forcedstyleName:String = null;
      
      private var _dirty:Boolean = false;
      
      public function PostitHeaderComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.horizontalAlign = "center";
                  if(_loc1_ || _loc1_)
                  {
                     this.verticalAlign = "middle";
                     if(!_loc2_)
                     {
                        this.gap = 0;
                        if(_loc1_)
                        {
                           addr007a:
                           this.percentWidth = 100;
                           if(!_loc2_)
                           {
                              addr0084:
                              this.mxmlContent = [this._PostitHeaderComponent_LocaLabel1_i(),this._PostitHeaderComponent_BriskImageDynaLib1_i()];
                           }
                           §§goto(addr0095);
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               addr0095:
               return;
            }
            §§goto(addr007a);
         }
         §§goto(addr0084);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr005a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr005a:
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
      
      public function set text(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || Boolean(param1))
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     this._dirty = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§push(this.textLabel);
                        if(!_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop().text = §§pop();
                              if(!_loc3_)
                              {
                                 addr0073:
                                 §§push(this.forcedstyleName);
                                 if(_loc2_)
                                 {
                                    addr007c:
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr0085:
                                          §§push(this.textLabel);
                                          if(_loc2_)
                                          {
                                             addr009f:
                                             §§pop().styleName = this.forcedstyleName;
                                             addr008e:
                                             if(!_loc3_)
                                             {
                                                addr00a6:
                                                addr00a7:
                                                if(param1.length > 17)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr00b4:
                                                      §§push(this.textLabel);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop().styleName != "postitHeaderSmall")
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr00cf:
                                                               this.textLabel.styleName = "postitHeaderSmall";
                                                               addr00cb:
                                                            }
                                                         }
                                                         §§goto(addr00d4);
                                                      }
                                                      §§goto(addr00cf);
                                                   }
                                                   §§goto(addr00cb);
                                                }
                                                §§goto(addr00d4);
                                             }
                                             §§goto(addr00b4);
                                          }
                                          §§goto(addr00cf);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr00cb);
               }
               addr00d4:
               return;
            }
            §§goto(addr007c);
         }
         §§goto(addr0085);
      }
      
      private function _PostitHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "postitHeader";
            if(_loc3_)
            {
               _loc1_.maxHeight = 30;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0055:
                     _loc1_.id = "textLabel";
                     if(_loc3_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0081:
                                 this.textLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"textLabel",this.textLabel);
                                 }
                              }
                              §§goto(addr0098);
                           }
                        }
                     }
                     §§goto(addr0081);
                  }
                  addr0098:
                  return _loc1_;
               }
               §§goto(addr006c);
            }
            §§goto(addr0055);
         }
         §§goto(addr0078);
      }
      
      private function _PostitHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "head_line";
               if(!_loc2_)
               {
                  _loc1_.id = "line";
                  if(_loc3_)
                  {
                     addr004e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0076:
                              this.line = _loc1_;
                              if(_loc3_)
                              {
                                 addr0080:
                                 BindingManager.executeBindings(this,"line",this.line);
                              }
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0076);
                  }
                  addr008d:
                  return _loc1_;
               }
               §§goto(addr004e);
            }
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3321844line;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._3321844line = param1;
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1055687225textLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1055687225textLabel = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get forcedstyleName() : String
      {
         return this._2094719709forcedstyleName;
      }
      
      public function set forcedstyleName(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2094719709forcedstyleName;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2094719709forcedstyleName = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forcedstyleName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
      }
   }
}

