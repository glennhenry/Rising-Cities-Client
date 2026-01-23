package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigAssistDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _connectedPhaseId:Number;
      
      private var _lifetime:Number;
      
      private var _locaId:String;
      
      private var _gfxId:Number;
      
      private var _behaviourOutput:int;
      
      public function ConfigAssistDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._id = param1.id;
               if(!(_loc3_ && _loc3_))
               {
                  this._type = param1.t;
                  if(!_loc3_)
                  {
                     this._connectedPhaseId = param1.pId;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0071:
                        this._lifetime = param1.l;
                        if(_loc2_ || Boolean(this))
                        {
                           this._locaId = param1.lo;
                           if(_loc2_ || Boolean(param1))
                           {
                              this._gfxId = param1.gf;
                              if(!_loc3_)
                              {
                                 addr00b8:
                                 this._behaviourOutput = param1.o;
                              }
                           }
                           §§goto(addr00c1);
                        }
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr0071);
            }
         }
         addr00c1:
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get behaviourOutput() : int
      {
         return this._behaviourOutput;
      }
      
      public function get connectedPhaseId() : Number
      {
         return this._connectedPhaseId;
      }
   }
}

