package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.VGroup;
   
   public class ResidentialHeaderComponent extends VGroup
   {
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ResidentialHeaderComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.horizontalAlign = "center";
                  if(!(_loc2_ && _loc2_))
                  {
                     this.verticalAlign = "middle";
                     if(_loc1_)
                     {
                        this.gap = 3;
                        if(!_loc2_)
                        {
                           addr007a:
                           this.percentWidth = 100;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008c:
                              this.mxmlContent = [this._ResidentialHeaderComponent_LocaLabel1_i(),this._ResidentialHeaderComponent_BriskImageDynaLib1_i()];
                           }
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr007a);
               }
            }
            addr009d:
            return;
         }
         §§goto(addr008c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
            this.textLabel.text = param1;
         }
      }
      
      private function _ResidentialHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "residentialHeader";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.maxHeight = 30;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "textLabel";
                     if(!_loc3_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr0099);
                              }
                              §§goto(addr00a3);
                           }
                        }
                        addr0099:
                        this.textLabel = _loc1_;
                        if(!_loc3_)
                        {
                           addr00a3:
                           BindingManager.executeBindings(this,"textLabel",this.textLabel);
                        }
                        §§goto(addr00b0);
                     }
                     addr00b0:
                     return _loc1_;
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr0070);
         }
         §§goto(addr00a3);
      }
      
      private function _ResidentialHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "head_line";
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.id = "line";
                  if(_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007c:
                              this.line = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 BindingManager.executeBindings(this,"line",this.line);
                              }
                           }
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005c);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0051);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._3321844line = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0078);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1055687225textLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1055687225textLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
   }
}

