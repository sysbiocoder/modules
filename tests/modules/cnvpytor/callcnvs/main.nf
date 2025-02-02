#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { CNVPYTOR_CALLCNVS } from '../../../../modules/cnvpytor/callcnvs/main.nf'

workflow test_cnvpytor_callcnvs {

    input = [
        [ id:'test'], // meta map
        file(params.test_data['homo_sapiens']['illumina']['test_pytor'], checkIfExists: true)
    ]

    CNVPYTOR_CALLCNVS ( input )
}
