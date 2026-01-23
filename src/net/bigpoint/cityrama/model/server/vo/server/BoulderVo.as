package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class BoulderVo implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _currentOutput:Vector.<ConfigOutputDTO>;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      private var _boulderDTO:BoulderDTO;
      
      public function BoulderVo(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this._boulderDTO = new BoulderDTO(param1,param2);
               if(_loc4_ || Boolean(param2))
               {
                  this._id = this._boulderDTO.id;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this._configId = this._boulderDTO.configId;
                     if(!_loc3_)
                     {
                        addr0076:
                        this._posX = this._boulderDTO.posX;
                        if(!_loc3_)
                        {
                           addr0086:
                           this._posY = this._boulderDTO.posY;
                           if(!_loc3_)
                           {
                              this._created = this._boulderDTO.created;
                              if(_loc4_)
                              {
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00cd);
                           }
                        }
                     }
                     addr00b4:
                     this._currentOutput = this._boulderDTO.currentOutput;
                     if(_loc4_ || Boolean(param2))
                     {
                        addr00cd:
                        this._activePhases = this._boulderDTO.activePhases;
                     }
                     §§goto(addr00d8);
                  }
               }
               §§goto(addr0076);
            }
            addr00d8:
            return;
         }
         §§goto(addr0086);
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._posY = param1;
         }
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._posX = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._configId = param1;
         }
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._created = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._id = param1;
         }
      }
      
      public function get currentOutput() : Vector.<ConfigOutputDTO>
      {
         return this._currentOutput;
      }
      
      public function set currentOutput(param1:Vector.<ConfigOutputDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._currentOutput = param1;
         }
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._activePhases;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._activePhases = param1;
         }
      }
   }
}

