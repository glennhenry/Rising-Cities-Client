package net.bigpoint.cityrama.view.hud.ui.components
{
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class SimpleTextBar extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && SimpleTextBar))
      {
         _skinParts = {"labelDisplay":true};
      }
      
      private var _label:String = "";
      
      private var _labelIsDirty:Boolean;
      
      public var labelDisplay:LocaLabel;
      
      public function SimpleTextBar()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this._label)
            {
               if(_loc3_ || _loc3_)
               {
                  this._label = param1;
                  if(_loc3_)
                  {
                     this._labelIsDirty = true;
                     if(_loc3_ || _loc2_)
                     {
                        addr0054:
                        invalidateProperties();
                     }
                     §§goto(addr0059);
                  }
               }
               §§goto(addr0054);
            }
         }
         addr0059:
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partAdded(param1,param2);
            if(!(_loc3_ && _loc3_))
            {
               if(param2 == this.labelDisplay)
               {
                  if(!_loc3_)
                  {
                     this._labelIsDirty = true;
                     if(!_loc3_)
                     {
                        addr0050:
                        this.labelDisplay.maxDisplayedLines = 1;
                        if(_loc4_)
                        {
                           addr005f:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr005f);
               }
            }
            addr0064:
            return;
         }
         §§goto(addr0050);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               if(this._labelIsDirty)
               {
                  if(!_loc2_)
                  {
                     this._labelIsDirty = false;
                     if(_loc1_ || Boolean(this))
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr0069);
                  }
                  addr005a:
                  this.labelDisplay.text = this._label;
                  if(!_loc2_)
                  {
                     addr0069:
                     invalidateProperties();
                  }
                  §§goto(addr006e);
               }
               addr006e:
               return;
            }
            §§goto(addr0069);
         }
         §§goto(addr005a);
      }
   }
}

