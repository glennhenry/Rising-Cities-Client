package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigPlayfieldDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _typeId:Number;
      
      private var _levelId:Number;
      
      private var _gfxId:int;
      
      private var _maxX:Number;
      
      private var _maxY:Number;
      
      private var _expansionValue:int;
      
      private var _masteryChallenge:ConfigMasteryChallengeDTO;
      
      public function ConfigPlayfieldDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc3_)
            {
               this._id = param1.id;
               if(_loc2_)
               {
                  addr0035:
                  this._typeId = param1.t;
                  if(_loc2_)
                  {
                     addr0043:
                     this._levelId = param1.l;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0043);
            }
            addr0065:
            this._gfxId = param1.gf;
            if(_loc2_ || Boolean(this))
            {
               addr007c:
               this._maxX = param1.x;
               if(!_loc3_)
               {
                  this._maxY = param1.y;
                  if(!_loc3_)
                  {
                     §§goto(addr00a4);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr00bb);
            }
            addr00a4:
            this._expansionValue = param1.ev;
            if(!(_loc3_ && _loc3_))
            {
               addr00bb:
               if(param1.m)
               {
                  if(_loc2_)
                  {
                     addr00c9:
                     this._masteryChallenge = new ConfigMasteryChallengeDTO(param1.ma);
                  }
               }
            }
            return;
         }
         §§goto(addr0035);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._id = param1;
         }
      }
      
      public function get typeId() : Number
      {
         return this._typeId;
      }
      
      public function set typeId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._typeId = param1;
         }
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._levelId = param1;
         }
      }
      
      public function get maxX() : Number
      {
         return this._maxX;
      }
      
      public function set maxX(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._maxX = param1;
         }
      }
      
      public function get maxY() : Number
      {
         return this._maxY;
      }
      
      public function set maxY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._maxY = param1;
         }
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get expansionValue() : int
      {
         return this._expansionValue;
      }
   }
}

