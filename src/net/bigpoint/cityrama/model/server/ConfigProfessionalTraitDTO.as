package net.bigpoint.cityrama.model.server
{
   public class ConfigProfessionalTraitDTO
   {
      
      private var _id:Number;
      
      private var _value:Number;
      
      private var _localeid:String;
      
      private var _gfxid:int;
      
      public function ConfigProfessionalTraitDTO(param1:Object)
      {
         var obj:Object;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(_loc4_ || _loc2_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc5_ && Boolean(this)))
            {
               super();
               if(_loc4_)
               {
                  addr0052:
                  var _loc3_:* = obj;
                  with(_loc3_)
                  {
                     
                     if(!_loc5_)
                     {
                        _value = obj.v;
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           _id = obj.cpt;
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              addr00a4:
                              _localeid = obj.lo;
                              if(!(_loc5_ && _loc2_))
                              {
                                 _gfxid = obj.gfx;
                              }
                           }
                        }
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr00a4);
               }
            }
            addr00d3:
            return;
         }
         §§goto(addr0052);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function get localeid() : String
      {
         return this._localeid;
      }
      
      public function get gfxid() : int
      {
         return this._gfxid;
      }
   }
}

