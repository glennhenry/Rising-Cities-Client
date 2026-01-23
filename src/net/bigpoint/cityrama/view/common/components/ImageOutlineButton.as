package net.bigpoint.cityrama.view.common.components
{
   import spark.components.Button;
   
   public class ImageOutlineButton extends Button
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "image":true,
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      public var image:BriskImageDynaLib;
      
      private var _hasUpOutline:Boolean = true;
      
      private var _hasOverOutline:Boolean = true;
      
      private var _hasDownOutline:Boolean = true;
      
      private var _hasDisabledOutline:Boolean = true;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      public function ImageOutlineButton()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               this.focusEnabled = false;
            }
         }
      }
      
      public function set dynaLibName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._dynaLibName = param1;
            if(_loc3_ || Boolean(this))
            {
               addr003f:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function set dynaBmpSourceName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._dynaBmpSourceName = param1;
            if(!_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               addr0028:
               §§push(this.image);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this._dynaLibName);
                        if(!_loc1_)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(_temp_4)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§pop();
                                    if(!_loc1_)
                                    {
                                       §§goto(addr0078);
                                    }
                                    §§goto(addr00b4);
                                 }
                              }
                           }
                           addr0078:
                           §§goto(addr0077);
                        }
                        addr0077:
                        if(Boolean(this._dynaBmpSourceName))
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(this.image);
                              if(_loc2_)
                              {
                                 §§push(this._dynaLibName);
                                 if(_loc2_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr00bc:
                                       this.image.dynaBmpSourceName = this._dynaBmpSourceName;
                                       addr00b8:
                                       addr00b4:
                                    }
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00b8);
            }
            addr00be:
            return;
         }
         §§goto(addr0028);
      }
      
      public function set hasUpOutline(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._hasUpOutline = param1;
         }
      }
      
      public function set hasOverOutline(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._hasOverOutline = param1;
         }
      }
      
      public function set hasDownOutline(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._hasDownOutline = param1;
         }
      }
      
      public function set hasDisabledOutline(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._hasDisabledOutline = param1;
         }
      }
      
      public function get hasUpOutline() : Boolean
      {
         return this._hasUpOutline;
      }
      
      public function get hasOverOutline() : Boolean
      {
         return this._hasOverOutline;
      }
      
      public function get hasDownOutline() : Boolean
      {
         return this._hasDownOutline;
      }
      
      public function get hasDisabledOutline() : Boolean
      {
         return this._hasDisabledOutline;
      }
   }
}

