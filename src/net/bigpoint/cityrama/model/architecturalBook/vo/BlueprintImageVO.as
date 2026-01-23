package net.bigpoint.cityrama.model.architecturalBook.vo
{
   public class BlueprintImageVO
   {
      
      private var _visualName:String;
      
      private var _visualLibName:String;
      
      private var _toolTip:String;
      
      private var _descriptionText:String;
      
      public function BlueprintImageVO()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this.cleanAll();
            }
         }
      }
      
      public function clone() : BlueprintImageVO
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueprintImageVO = new BlueprintImageVO();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.visualName = this.visualName;
            if(_loc2_)
            {
               _loc1_.visualLibName = this.visualLibName;
               if(_loc2_ || Boolean(this))
               {
                  addr005a:
                  _loc1_.toolTip = this.toolTip;
               }
               return _loc1_;
            }
         }
         §§goto(addr005a);
      }
      
      public function cleanAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._visualName = "";
            if(!(_loc2_ && _loc1_))
            {
               this._visualLibName = "";
               if(_loc1_ || _loc2_)
               {
                  this._toolTip = "";
                  if(!(_loc2_ && _loc1_))
                  {
                     addr006a:
                     this._descriptionText = "";
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006a);
            }
            addr0070:
            return;
         }
         §§goto(addr006a);
      }
      
      public function get visualName() : String
      {
         return this._visualName;
      }
      
      public function set visualName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._visualName = param1;
         }
      }
      
      public function get visualLibName() : String
      {
         return this._visualLibName;
      }
      
      public function set visualLibName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._visualLibName = param1;
         }
      }
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._toolTip = param1;
         }
      }
      
      public function get descriptionText() : String
      {
         return this._descriptionText;
      }
      
      public function set descriptionText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._descriptionText = param1;
         }
      }
   }
}

