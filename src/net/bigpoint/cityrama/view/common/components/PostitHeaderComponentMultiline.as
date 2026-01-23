package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.VGroup;
   
   public class PostitHeaderComponentMultiline extends VGroup
   {
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PostitHeaderComponentMultiline()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.horizontalAlign = "center";
                  if(!(_loc1_ && _loc2_))
                  {
                     this.verticalAlign = "middle";
                     if(!_loc1_)
                     {
                        addr0069:
                        this.gap = 3;
                        if(!_loc1_)
                        {
                           addr0073:
                           this.percentWidth = 100;
                           if(!_loc1_)
                           {
                              addr007d:
                              this.mxmlContent = [this._PostitHeaderComponentMultiline_LocaLabel1_i(),this._PostitHeaderComponentMultiline_BriskImageDynaLib1_i()];
                           }
                           §§goto(addr008e);
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               addr008e:
               return;
            }
            §§goto(addr0069);
         }
         §§goto(addr0073);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0062);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0062:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function set text(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.textLabel);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§pop().text = param1;
               if(!_loc2_)
               {
                  addr004c:
                  if(param1.length > 17)
                  {
                     if(_loc3_)
                     {
                        §§push(this.textLabel);
                        if(!_loc2_)
                        {
                           addr0063:
                           if(§§pop().styleName != "postitHeaderSmallMultiLine")
                           {
                              if(_loc3_)
                              {
                                 addr0075:
                                 this.textLabel.styleName = "postitHeaderSmallMultiLine";
                                 addr0071:
                              }
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0071);
                  }
               }
               addr007a:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr004c);
      }
      
      private function _PostitHeaderComponentMultiline_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "postitHeader";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.maxWidth = 195;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.id = "textLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0092:
                                 this.textLabel = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009c:
                                    BindingManager.executeBindings(this,"textLabel",this.textLabel);
                                 }
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr0092);
                     }
                     addr00a9:
                     return _loc1_;
                  }
                  §§goto(addr0092);
               }
            }
            §§goto(addr009c);
         }
         §§goto(addr0081);
      }
      
      private function _PostitHeaderComponentMultiline_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               addr0030:
               _loc1_.dynaBmpSourceName = "head_line";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "line";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr009b);
                        }
                     }
                     addr0089:
                     this.line = _loc1_;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr009b:
                        BindingManager.executeBindings(this,"line",this.line);
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr0030);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3321844line;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._3321844line = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1055687225textLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

