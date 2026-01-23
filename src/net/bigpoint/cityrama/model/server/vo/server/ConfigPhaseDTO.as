package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPhaseDTO
   {
      
      private var _listEntryOutputs:Vector.<ConfigOutputDTO>;
      
      private var _listTriggerOutput:Vector.<ConfigOutputDTO>;
      
      private var _instantFinshOutput:Vector.<ConfigOutputDTO>;
      
      private var _duration:ConfigDurationVo;
      
      private var _phaseOrderId:int;
      
      private var _phaseType:String;
      
      private var _phaseId:Number;
      
      public function ConfigPhaseDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         super();
         this._listEntryOutputs = new Vector.<ConfigOutputDTO>();
         this._listTriggerOutput = new Vector.<ConfigOutputDTO>();
         this._instantFinshOutput = new Vector.<ConfigOutputDTO>();
         if(param1 != null)
         {
            if(param1.eo != null)
            {
               for each(_loc2_ in param1.eo)
               {
                  this._listEntryOutputs.push(new ConfigOutputDTO(_loc2_));
               }
            }
            if(param1.to != null)
            {
               for each(_loc3_ in param1.to)
               {
                  this._listTriggerOutput.push(new ConfigOutputDTO(_loc3_));
               }
            }
            if(param1.ifc != null)
            {
               for each(_loc4_ in param1.ifc)
               {
                  this._instantFinshOutput.push(new ConfigOutputDTO(_loc4_));
               }
            }
            if(param1.d != null)
            {
               this._duration = new ConfigDurationVo(param1.d);
            }
            else
            {
               this._duration = new ConfigDurationVo({"d":0});
            }
            this._phaseOrderId = param1.oid as int;
            this._phaseType = param1.t as String;
            this._phaseId = param1.pid as Number;
         }
      }
      
      public function get listEntryOutputs() : Vector.<ConfigOutputDTO>
      {
         return this._listEntryOutputs;
      }
      
      public function getListEntryOutputByType(param1:String, param2:String = null) : ConfigOutputDTO
      {
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in this._listEntryOutputs)
         {
            if(_loc3_.type == param1)
            {
               if(_loc3_.resourceConfig != null && _loc3_.resourceConfig.type == param2 || param2 == null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function getListTriggerOutputByType(param1:String, param2:String = null) : ConfigOutputDTO
      {
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in this._listTriggerOutput)
         {
            if(_loc3_.type == param1)
            {
               if(_loc3_.resourceConfig != null && _loc3_.resourceConfig.type == param2 || param2 == null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function get phaseOrderId() : int
      {
         return this._phaseOrderId;
      }
      
      public function get phaseType() : String
      {
         return this._phaseType;
      }
      
      public function get phaseId() : Number
      {
         return this._phaseId;
      }
      
      public function get durationConfig() : ConfigDurationVo
      {
         return this._duration;
      }
      
      public function get listTriggerOutput() : Vector.<ConfigOutputDTO>
      {
         return this._listTriggerOutput;
      }
      
      public function get instantFinshOutput() : Vector.<ConfigOutputDTO>
      {
         return this._instantFinshOutput;
      }
      
      public function set listEntryOutputs(param1:Vector.<ConfigOutputDTO>) : void
      {
         this._listEntryOutputs = param1;
      }
      
      public function clone() : ConfigPhaseDTO
      {
         var _loc2_:ConfigOutputDTO = null;
         var _loc1_:ConfigPhaseDTO = new ConfigPhaseDTO(null);
         _loc1_._duration = this._duration;
         _loc1_._instantFinshOutput = this._instantFinshOutput;
         _loc1_._listEntryOutputs = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in this._listEntryOutputs)
         {
            _loc1_._listEntryOutputs.push(_loc2_);
         }
         _loc1_._listTriggerOutput = this._listTriggerOutput;
         _loc1_._phaseId = this._phaseId;
         _loc1_._phaseOrderId = this._phaseOrderId;
         _loc1_._phaseType = this._phaseType;
         return _loc1_;
      }
   }
}

